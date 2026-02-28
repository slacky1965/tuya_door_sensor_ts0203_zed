#include "app_main.h"

static bool first_start = true;
static dev_onoff_cmd_t dev_onoff_cmd[DEV_ONOFF_CMD_NUM];
ev_timer_event_t *timerOnOffCmdEvt = NULL;

static int32_t check_onoff_cmd_rspCb(void *args) {

    for (uint8_t i = 0; i < DEV_ONOFF_CMD_NUM; i++) {
        if (dev_onoff_cmd[i].used && (dev_onoff_cmd[i].cmd_send && !dev_onoff_cmd[i].status_rsp)) {
            repeat_onoff_cmd = true;
        }
    }

    timerOnOffCmdEvt = NULL;
    return -1;
}

static void cmdOnOffSend(uint8_t ep, epInfo_t *dstEpInfo, uint8_t command) {

    /* command 0x00 - off, 0x01 - on, 0x02 - toggle */

    switch(command) {
        case ZCL_CMD_ONOFF_OFF:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: off\r\n");
            zcl_onOff_offCmd(ep, dstEpInfo, FALSE);
            break;
        case ZCL_CMD_ONOFF_ON:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: on\r\n");
            zcl_onOff_onCmd(ep, dstEpInfo, FALSE);
            break;
        case ZCL_CMD_ONOFF_TOGGLE:
            DEBUG(DEBUG_ONOFF_EN, "OnOff command: toggle\r\n");
            zcl_onOff_toggleCmd(ep, dstEpInfo, FALSE);
            break;
        default:
            break;
    }
}

void cmdOnOff(uint8_t command, uint8_t app_mode) {

    if (first_start) {
        first_start = false;
        return;
    }

    zcl_onOffSwitchCfgAttr_t *attrOnOffCfg = zcl_onOffSwitchCfgAttrGet();

    if (command == ZCL_CMD_ONOFF_OFF && attrOnOffCfg->off_cmd_off) return;
    if (command == ZCL_CMD_ONOFF_ON && attrOnOffCfg->on_cmd_off) return;

    epInfo_t dstEpInfo;
    dev_onoff_cmd_t *dev_onoff = NULL;

    uint16_t groupList[APS_GROUP_TABLE_NUM];
    uint8_t groupCnt = 0;
    aps_group_list_get(&groupCnt, groupList);

    aps_binding_entry_t *bind_tbl = aps_bindingTblEntryGet();
    bool bind_onoff = false;

    switch(app_mode) {
        case ONOFF_CMD_SINGLE:
            /* command for groups */
            TL_SETSTRUCTCONTENT(dstEpInfo, 0);
            dstEpInfo.profileId = HA_PROFILE_ID;
            dstEpInfo.dstAddrMode = APS_SHORT_GROUPADDR_NOEP;
            for (uint8_t i = 0; i < groupCnt; i++) {
                dstEpInfo.dstAddr.shortAddr = groupList[i];
                cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
                DEBUG(DEBUG_ONOFF_EN, "single OnOffCmd: %d send for groupAddr: 0x%04x\r\n", command, dstEpInfo.dstAddr.shortAddr);
            }

            /* command when binding */
            TL_SETSTRUCTCONTENT(dstEpInfo, 0);
            dstEpInfo.profileId = HA_PROFILE_ID;
            dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;
            cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
            DEBUG(DEBUG_ONOFF_EN, "single OnOffCmd send. Command: 0x%02x\r\n", command);
            break;
        case ONOFF_CMD_CHECK_ANSWER:
            if (timerOnOffCmdEvt) {
                TL_ZB_TIMER_CANCEL(&timerOnOffCmdEvt);
            }

            for(uint8_t i = 0; i < APS_BINDING_TABLE_NUM; i++) {
                if (bind_tbl[i].used && bind_tbl[i].clusterId == ZCL_CLUSTER_GEN_ON_OFF) {
                    bind_onoff = true;
                }
            }

            /* command for groups */
            TL_SETSTRUCTCONTENT(dstEpInfo, 0);
            dstEpInfo.profileId = HA_PROFILE_ID;
            dstEpInfo.dstAddrMode = APS_SHORT_GROUPADDR_NOEP;
            for (uint8_t i = 0; i < groupCnt; i++) {
                dev_onoff = get_dev_onoff_cmd_free();
                if (dev_onoff) {
                    dev_onoff->used = true;
                    dev_onoff->group_addr = dstEpInfo.dstAddr.shortAddr = groupList[i];
                    dev_onoff->group = true;
                    dev_onoff->cmd_send = true;
                    dev_onoff->command = command;
                    dev_onoff->seq_num = zcl_seqNum;
                    cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
                    DEBUG(DEBUG_ONOFF_EN, "check answer OnOffCmd: %d send for groupAddr: 0x%04x\r\n", dev_onoff->command, dstEpInfo.dstAddr.shortAddr);
                }
            }

            if (bind_onoff) {
                /* command when binding */
                TL_SETSTRUCTCONTENT(dstEpInfo, 0);
                dstEpInfo.profileId = HA_PROFILE_ID;
                dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;
                dev_onoff = get_dev_onoff_cmd_free();
                if (dev_onoff) {
                    dev_onoff->used = true;
                    dev_onoff->group = false;
                    dev_onoff->cmd_send = true;
                    dev_onoff->command = command;
                    dev_onoff->seq_num = zcl_seqNum;
                    cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
                    DEBUG(DEBUG_ONOFF_EN, "check answer OnOffCmd send. Command: 0x%02x\r\n", command);
                }
            }
            timerOnOffCmdEvt = TL_ZB_TIMER_SCHEDULE(check_onoff_cmd_rspCb, NULL, TIMEOUT_1SEC);
            break;
        case ONOFF_CMD_REPEAT:
            for (uint8_t i = 0; i < DEV_ONOFF_CMD_NUM; i++) {
//                printf("ONOFF_CMD_REPEAT. used:       %d\r\n", dev_onoff_cmd[i].used);
//                printf("ONOFF_CMD_REPEAT. group:      %d\r\n", dev_onoff_cmd[i].group);
//                printf("ONOFF_CMD_REPEAT. command:    %d\r\n", dev_onoff_cmd[i].command);
//                printf("ONOFF_CMD_REPEAT. seq_num:    %d\r\n", dev_onoff_cmd[i].seq_num);
//                printf("ONOFF_CMD_REPEAT. cmd_send:   %d\r\n", dev_onoff_cmd[i].cmd_send);
//                printf("ONOFF_CMD_REPEAT. status_rsp: %d\r\n\r\n", dev_onoff_cmd[i].status_rsp);
                if (dev_onoff_cmd[i].used && (dev_onoff_cmd[i].cmd_send && !dev_onoff_cmd[i].status_rsp)) {
                    if (dev_onoff_cmd[i].group) {
                        /* command for groups */
                        TL_SETSTRUCTCONTENT(dstEpInfo, 0);
                        dstEpInfo.profileId = HA_PROFILE_ID;
                        dstEpInfo.dstAddrMode = APS_SHORT_GROUPADDR_NOEP;
                        dstEpInfo.dstAddr.shortAddr = dev_onoff_cmd[i].group_addr;
                        cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, dev_onoff_cmd[i].command);
                        dev_onoff_cmd[i].used = false;
//                        DEBUG(DEBUG_ONOFF_EN, "repeat OnOffCmd: %d send for groupAddr: 0x%04x\r\n", dev_onoff_cmd[i].command, dstEpInfo.dstAddr.shortAddr);
                    } else {
                        /* command when binding */
                        TL_SETSTRUCTCONTENT(dstEpInfo, 0);
                        dstEpInfo.profileId = HA_PROFILE_ID;
                        dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;
                        cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, dev_onoff_cmd[i].command);
                        dev_onoff_cmd[i].used = false;
//                        DEBUG(DEBUG_ONOFF_EN, "used: %d, repeat OnOffCmd send. Command: 0x%02x\r\n", dev_onoff_cmd[i].used, dev_onoff_cmd[i].command);
                    }
                }
            }
            break;
        default:
            return;
            break;
    }
}

void dev_onoff_cmd_init() {
    memset(&dev_onoff_cmd, 0, sizeof(dev_onoff_cmd));
}

dev_onoff_cmd_t *get_dev_onoff_cmd_free() {
    for (uint8_t i = 0; i < DEV_ONOFF_CMD_NUM; i++) {
        if (!dev_onoff_cmd[i].used) {
            return &dev_onoff_cmd[i];
        }
    }

    return NULL;
}

dev_onoff_cmd_t *find_rsp_dev_onoff_cmd(uint8_t seq_num) {
    for (uint8_t i = 0; i < DEV_ONOFF_CMD_NUM; i++) {
        if (dev_onoff_cmd[i].used && dev_onoff_cmd[i].seq_num == seq_num) {
            return &dev_onoff_cmd[i];
        }
    }

    return NULL;
}

void set_send_dev_onoff_cmd(uint8_t seq_num) {
    for (uint8_t i = 0; i < DEV_ONOFF_CMD_NUM; i++) {
        if (dev_onoff_cmd[i].used && dev_onoff_cmd[i].seq_num == seq_num) {
            dev_onoff_cmd[i].used = false;
//            DEBUG(DEBUG_ONOFF_EN, "i: %d, set_send_dev_onoff_cmd. seq_num: %d\r\n", i, seq_num);
        }
    }
}
