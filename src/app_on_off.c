#include "app_main.h"

typedef struct {
    bool     deferred_cmd;
    uint8_t  cmd;
    uint8_t  cnt;
    uint32_t timeout;
} app_deferred_cmd_t;

static bool onoff_first_start = true;
static app_deferred_cmd_t deferred_cmd = {
    .deferred_cmd = false,
    .cnt = 0,
};
//ev_timer_event_t *timerOnOffCmdEvt = NULL;

static status_t cmdOnOffSend(uint8_t ep, epInfo_t *dstEpInfo, uint8_t command) {

    status_t st = 0xFF;

    /* command 0x00 - off, 0x01 - on, 0x02 - toggle */
    switch(command) {
        case ZCL_CMD_ONOFF_OFF:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: off\r\n");
            st = zcl_onOff_offCmd(ep, dstEpInfo, TRUE);
            break;
        case ZCL_CMD_ONOFF_ON:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: on\r\n");
            st = zcl_onOff_onCmd(ep, dstEpInfo, TRUE);
            break;
        case ZCL_CMD_ONOFF_TOGGLE:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: toggle\r\n");
            st = zcl_onOff_toggleCmd(ep, dstEpInfo, TRUE);
            break;
        default:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: unknown\r\n");
            break;
    }
//    DEBUG(DEBUG_ONOFF_EN, ", status: 0x%02x\r\n", st);
    return st;
}

void cmdOnOff(uint8_t command) {

    if (onoff_first_start) {
        onoff_first_start = false;
        return;
    }

    zcl_onOffSwitchCfgAttr_t *attrOnOffCfg = zcl_onOffSwitchCfgAttrGet();

    if (command == ZCL_CMD_ONOFF_OFF && attrOnOffCfg->off_cmd_off) return;
    if (command == ZCL_CMD_ONOFF_ON && attrOnOffCfg->on_cmd_off) return;

    if (!zb_isDeviceJoinedNwk() && !zb_isDeviceFactoryNew()) {
        if (!deferred_cmd.deferred_cmd) {
            deferred_cmd.cmd = command;
            deferred_cmd.cnt = 0;
            deferred_cmd.deferred_cmd = true;
        }
        deferred_cmd.timeout = clock_time();
        return;
    }

    deferred_cmd.deferred_cmd = false;

    status_t st;
    epInfo_t dstEpInfo;
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);
    dstEpInfo.profileId = HA_PROFILE_ID;

    uint16_t groupList[APS_GROUP_TABLE_NUM];
    uint8_t groupCnt = 0;
    aps_group_list_get(&groupCnt, groupList);

    /* command for groups */
    dstEpInfo.dstAddrMode = APS_SHORT_GROUPADDR_NOEP;
    for (uint8_t i = 0; i < groupCnt; i++) {
        aps_group_tbl_ent_t *grEntry = aps_group_search(groupList[i], APP_ENDPOINT1);
        if (grEntry) {
            dstEpInfo.dstAddr.shortAddr = grEntry->group_addr;
            st = cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
            APP_DEBUG(DEBUG_ONOFF_EN, "OnOff in groups. cmd: %d, src_ep: %d, dst_ep: %d, addr: 0x%04x, status: %d\r\n",
                    (command == 0)?"Off":(command == 1)?"On":"Toggle", APP_ENDPOINT1, grEntry->n_endpoints, grEntry->group_addr, st);
        }
    }


    /* command when binding */
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);
    dstEpInfo.profileId = HA_PROFILE_ID;

    aps_binding_entry_t *bind_tbl = bindTblEntryGet();
    for (uint8_t j = 0; j < APS_BINDING_TABLE_NUM; j++) {
        if (bind_tbl->used && bind_tbl->clusterId == ZCL_CLUSTER_GEN_ON_OFF && bind_tbl->srcEp == APP_ENDPOINT1) {
            dstEpInfo.dstAddrMode = bind_tbl->dstAddrMode;
            if (dstEpInfo.dstAddrMode == APS_SHORT_GROUPADDR_NOEP) {
                dstEpInfo.txOptions = 0;
                dstEpInfo.dstAddr.shortAddr = bind_tbl->groupAddr;
            } else {
                dstEpInfo.txOptions = APS_TX_OPT_ACK_TX;
                dstEpInfo.dstAddrMode = APS_LONG_DSTADDR_WITHEP;
                dstEpInfo.dstEp = bind_tbl->dstExtAddrInfo.dstEp;
                memcpy(dstEpInfo.dstAddr.extAddr, bind_tbl->dstExtAddrInfo.extAddr, sizeof(extAddr_t));
                app_add_repeat_cmd(ZCL_CLUSTER_GEN_ON_OFF, APP_ENDPOINT1, dstEpInfo.dstEp,
                                   dstEpInfo.dstAddrMode, dstEpInfo.dstAddr, command);
            }
            st = cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
#if DEBUG_ONOFF_EN
            APP_DEBUG(DEBUG_ONOFF_EN, "OnOff for bind. cmd: %s, ep: %d, clId: 0x%04x, addrMode: %d - %s, ",
                    (command == 0)?"Off":(command == 1)?"On":"Toggle",
                     bind_tbl->srcEp, bind_tbl->clusterId, dstEpInfo.dstAddrMode,
                    (dstEpInfo.dstAddrMode == APS_DSTADDR_EP_NOTPRESETNT)?"APS_DSTADDR_EP_NOTPRESETNT":
                    (dstEpInfo.dstAddrMode == APS_SHORT_GROUPADDR_NOEP)?"APS_SHORT_GROUPADDR_NOEP":
                    (dstEpInfo.dstAddrMode == APS_SHORT_DSTADDR_WITHEP)?"APS_SHORT_DSTADDR_WITHEP":"APS_LONG_DSTADDR_WITHEP");
            if (dstEpInfo.dstAddrMode == APS_LONG_DSTADDR_WITHEP) {
                APP_DEBUG(DEBUG_ONOFF_EN, "ieee: 0x%02x%02x%02x%02x%02x%02x%02x%02x, ",
                        bind_tbl->dstExtAddrInfo.extAddr[0], bind_tbl->dstExtAddrInfo.extAddr[1],
                        bind_tbl->dstExtAddrInfo.extAddr[2], bind_tbl->dstExtAddrInfo.extAddr[3],
                        bind_tbl->dstExtAddrInfo.extAddr[4], bind_tbl->dstExtAddrInfo.extAddr[5],
                        bind_tbl->dstExtAddrInfo.extAddr[6], bind_tbl->dstExtAddrInfo.extAddr[7]);
            } else if (dstEpInfo.dstAddrMode == APS_SHORT_GROUPADDR_NOEP) {
                APP_DEBUG(DEBUG_ONOFF_EN, "groupAddr: 0x%04x, ",
                        dstEpInfo.dstAddr.shortAddr);
            } else {
                APP_DEBUG(DEBUG_ONOFF_EN, "shortAddr: 0x%04x, ",
                        dstEpInfo.dstAddr.shortAddr);
            }
            APP_DEBUG(DEBUG_ONOFF_EN, "status: 0x%02x\r\n", st);
#endif
        }
        bind_tbl++;
    }

}

int32_t app_repeatCmdOnOff(void *args) {

    APP_DEBUG(DEBUG_REPEAT_EN, "app_repeatCmdOnOff()\r\n");
    repeat_cmd_t *r_cmd = (repeat_cmd_t*)args;
    if (!r_cmd) return -1;

    epInfo_t dstEpInfo;
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);
    dstEpInfo.profileId = HA_PROFILE_ID;
    dstEpInfo.txOptions = APS_TX_OPT_ACK_TX;

    dstEpInfo.dstAddrMode = r_cmd->dstAddrMode;
    if (dstEpInfo.dstAddrMode == APS_SHORT_GROUPADDR_NOEP) {
        dstEpInfo.dstAddr.shortAddr = r_cmd->dstAddr.shortAddr;
    } else {
        dstEpInfo.dstEp = r_cmd->dstEp;
        memcpy(dstEpInfo.dstAddr.extAddr, r_cmd->dstAddr.extAddr, sizeof(extAddr_t));
    }
    cmdOnOffSend(r_cmd->srcEp, &dstEpInfo, r_cmd->cmdId);

    return -1;
}

void app_deferredCmdOnOff() {
    if (deferred_cmd.deferred_cmd && clock_time_exceed(deferred_cmd.timeout, TIMEOUT_TICK_1SEC)) {
        APP_DEBUG(DEBUG_REPEAT_EN, "app_deferredCmdOnOff(). cnt: %d\r\n", deferred_cmd.cnt);
        cmdOnOff(deferred_cmd.cmd);
        if (deferred_cmd.cnt++ == 2) deferred_cmd.deferred_cmd = false;
    }
}
