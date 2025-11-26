#include "app_main.h"

#define DOOR_COUNT_MAX 		8
#define DOOR_DEBOUNCE_US	(100 * 1000)	// 100 ms
#define DOOR_CLOSE			0x00
#define DOOR_OPEN			0x01

static uint8_t open_count = 0;
static uint8_t close_count = 0;
static uint32_t time_open = 0;
static uint32_t time_close = 0;


void fillIASAddress(epInfo_t* pdstEpInfo) {
    u16 len;
    u8 zoneState;

//    printf("fillIASAddress\r\n");

    memset((u8 *)pdstEpInfo, 0, sizeof(epInfo_t));

    zcl_getAttrVal(APP_ENDPOINT1, ZCL_CLUSTER_SS_IAS_ZONE, ZCL_ATTRID_ZONE_STATE, &len, &zoneState);

    pdstEpInfo->dstEp = APP_ENDPOINT1;
    pdstEpInfo->profileId = HA_PROFILE_ID;

    if (zoneState&ZONE_STATE_ENROLLED) { //device enrolled
        pdstEpInfo->dstAddrMode = APS_LONG_DSTADDR_WITHEP;
        zcl_getAttrVal(APP_ENDPOINT1, ZCL_CLUSTER_SS_IAS_ZONE, ZCL_ATTRID_IAS_CIE_ADDR, &len, (u8*)&pdstEpInfo->dstAddr.extAddr);
    }
    else {
        pdstEpInfo->dstAddrMode = APS_SHORT_DSTADDR_WITHEP;
        pdstEpInfo->dstAddr.shortAddr = 0x0000;
    }
}

static void door_ias(bool open) {

    uint16_t len;
    epInfo_t dstEpInfo;
    zoneStatusChangeNoti_t statusChangeNotification;

    fillIASAddress(&dstEpInfo);

    zcl_getAttrVal(APP_ENDPOINT1, ZCL_CLUSTER_SS_IAS_ZONE, ZCL_ATTRID_ZONE_STATUS, &len, (u8*) &statusChangeNotification.zoneStatus);
    zcl_getAttrVal(APP_ENDPOINT1, ZCL_CLUSTER_SS_IAS_ZONE, ZCL_ATTRID_ZONE_ID, &len, &statusChangeNotification.zoneId);

    if (open) {
        statusChangeNotification.zoneStatus |= ZONE_STATUS_BIT_ALARM1 | ZONE_STATUS_BIT_ALARM2;
    } else {
        statusChangeNotification.zoneStatus &= ~(ZONE_STATUS_BIT_ALARM1 | ZONE_STATUS_BIT_ALARM2);
    }

    zcl_setAttrVal(APP_ENDPOINT1, ZCL_CLUSTER_SS_IAS_ZONE, ZCL_ATTRID_ZONE_STATUS, (u8*) &statusChangeNotification.zoneStatus);
    statusChangeNotification.extStatus = 0;
    statusChangeNotification.delay = 0;
    statusChangeNotification.zoneId = ZONE_TYPE_DOOR_WINDOW_HANDLE;

    zcl_iasZone_statusChangeNotificationCmd(APP_ENDPOINT1, &dstEpInfo, TRUE, &statusChangeNotification);

}

void door_handler() {

    zcl_onOffSwitchCfgAttr_t *onoffCfgAttrs = zcl_onOffSwitchCfgAttrGet();
    uint8_t cmd_onoff;

    if (zb_getLocalShortAddr() >= 0xFFF8) {
        return;
    }

    if (drv_gpio_read(DOOR_GPIO)) {
    	if (!open_count) {
    		open_count++;
    		time_open = clock_time();
    	} else if (open_count == 1) {
    		if (clock_time_exceed(time_open, DOOR_DEBOUNCE_US)) {
    			open_count++;
    		}
    	}
    	if (open_count == 2) {
    		printf("door is open\r\n");
    		open_count++;
        	close_count = 0;
        	door_ias(DOOR_OPEN);
        	if (onoffCfgAttrs->switchActions == ZCL_SWITCH_ACTION_OFF_ON) {
        		cmd_onoff = ZCL_CMD_ONOFF_ON;
        	} else {
        		cmd_onoff = ZCL_CMD_ONOFF_OFF;
        	}
        	cmdOnOff(cmd_onoff);
    	}
    } else {
    	if (!close_count) {
    		close_count++;
    		time_close = clock_time();
    	} else if (close_count == 1) {
    		if (clock_time_exceed(time_close, DOOR_DEBOUNCE_US)) {
    			close_count++;
    		}
    	}
    	if (close_count == 2) {
    		printf("door is close\r\n");
    		close_count++;
        	open_count = 0;
        	door_ias(DOOR_CLOSE);
        	if (onoffCfgAttrs->switchActions == ZCL_SWITCH_ACTION_ON_OFF) {
        		cmd_onoff = ZCL_CMD_ONOFF_ON;
        	} else {
        		cmd_onoff = ZCL_CMD_ONOFF_OFF;
        	}
        	cmdOnOff(cmd_onoff);
    	}
    }


}

//void door_handler3() {
//
//    zcl_onOffSwitchCfgAttr_t *onoffCfgAttrs = zcl_onOffSwitchCfgAttrGet();
//
//    if (zb_getLocalShortAddr() >= 0xFFF8) {
//        return;
//    }
//
//    if (drv_gpio_read(DOOR_GPIO)) {
//
//        close_count = 0;
//
//        if (!g_appCtx.open_close) {
//
//            if (open_count++ < DOOR_COUNT_MAX) {
//                sleep_ms(5);
//                return;
//            }
//
//#if UART_PRINTF_MODE //&& DEBUG_LEAK
//            printf("There is a water leak.\r\n");
//#endif /* DEBUG_LEAK */
//
//            door_ias(1);
//
//#if UART_PRINTF_MODE && DEBUG_ONOFF
//            printf("Switch action: 0x0%x\r\n", onoffCfgAttrs->switchActions);
//#endif /* DEBUG_ONOFF */
//
//            door_cmd(onoffCfgAttrs->switchActions);
//
//            app_setPollRate(TIMEOUT_20SEC);
//
//            g_appCtx.open_close = true;
//            open_count = 0;
//        }
//    } else {
//
//        open_count = 0;
//
//        if (g_appCtx.open_close) {
//
//            if (close_count++ < DOOR_COUNT_MAX) {
//                sleep_ms(5);
//                return;
//            }
//
//            g_appCtx.open_close = false;
//            close_count = 0;
//            app_setPollRate(TIMEOUT_20SEC);
//
//#if UART_PRINTF_MODE
//            printf("No water leakage occurs\r\n");
//#if UART_PRINTF_MODE && DEBUG_ONOFF
//                    printf("Switch action: 0x0%x\r\n", onoffCfgAttrs->switchActions);
//#endif /* DEBUG_ONOFF */
//
//            switch(onoffCfgAttrs->switchActions) {
//                case ZCL_SWITCH_ACTION_ON_OFF:
//                    cmdOnOff(ZCL_CMD_ONOFF_ON);
//                    break;
//                case ZCL_SWITCH_ACTION_OFF_ON:
//                    cmdOnOff(ZCL_CMD_ONOFF_OFF);
//                    break;
////                case ZCL_SWITCH_ACTION_TOGGLE:
////                    cmdOnOff(ZCL_CMD_ONOFF_TOGGLE);
////                    break;
//                default:
//                    break;
//            }
//#endif
//
//            door_ias(0);
//        }
//    }
//}

bool door_idle() {
	if ((open_count == 0 && close_count == 1) || (open_count == 1 && close_count == 0)) return true;
    return false;
}

