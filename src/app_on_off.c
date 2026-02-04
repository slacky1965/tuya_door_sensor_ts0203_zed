#include "app_main.h"

//static bool sw_onoff = false;


static void cmdOnOffSend(uint8_t ep, epInfo_t *dstEpInfo, uint8_t command) {

    /* command 0x00 - off, 0x01 - on, 0x02 - toggle */

    switch(command) {
        case ZCL_CMD_ONOFF_OFF:
#if UART_PRINTF_MODE && DEBUG_ONOFF
            printf("OnOff command: off\r\n");
#endif /* UART_PRINTF_MODE */
            zcl_onOff_offCmd(ep, dstEpInfo, FALSE);
            break;
        case ZCL_CMD_ONOFF_ON:
#if UART_PRINTF_MODE && DEBUG_ONOFF
            printf("OnOff command: on\r\n");
#endif /* UART_PRINTF_MODE */
            zcl_onOff_onCmd(ep, dstEpInfo, FALSE);
            break;
        case ZCL_CMD_ONOFF_TOGGLE:
#if UART_PRINTF_MODE && DEBUG_ONOFF
            printf("OnOff command: toggle\r\n");
#endif /* UART_PRINTF_MODE */
            zcl_onOff_toggleCmd(ep, dstEpInfo, FALSE);
            break;
        default:
            break;
    }
}

void cmdOnOff(uint8_t command) {
    epInfo_t dstEpInfo;
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);
    dstEpInfo.profileId = HA_PROFILE_ID;

    uint16_t groupList[APS_GROUP_TABLE_NUM];
    uint8_t groupCnt = 0;
    aps_group_list_get(&groupCnt, groupList);

    /* command for groups */
    dstEpInfo.dstAddrMode = APS_SHORT_GROUPADDR_NOEP;
    for (uint8_t i = 0; i < groupCnt; i++) {
        dstEpInfo.dstAddr.shortAddr = groupList[i];
        cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
//        printf("groupAddr: 0x%04x\r\n", dstEpInfo.dstAddr.shortAddr);
    }

    /* command when binding */
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);
    dstEpInfo.profileId = HA_PROFILE_ID;
    dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;
    cmdOnOffSend(APP_ENDPOINT1, &dstEpInfo, command);
}

