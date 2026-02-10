#include "app_main.h"

static button_t button;
static uint8_t  keyPressed;

static void buttonKeepPressed(u8 btNum) {
    button.state = APP_FACTORY_NEW_DOING;
    button.ctn = 0;

    if(btNum == VK_SW1 && device_door_model != DEVICE_DOOR_NONE) {
#if UART_PRINTF_MODE && DEBUG_BUTTON
        printf("The button was keep pressed for 5 seconds\r\n");
#endif
        zb_factoryReset();
        g_appCtx.net_steer_start = true;
        TL_ZB_TIMER_SCHEDULE(net_steer_start_offCb, NULL, TIMEOUT_1MIN30SEC);
        light_blink_start(90, 250, 750);
    }
}


static void buttonSinglePressed(u8 btNum) {

    if (btNum == VK_SW1) {
#if UART_PRINTF_MODE && DEBUG_BUTTON
        printf("Button push 1 time\r\n");
#endif
        if (zb_isDeviceJoinedNwk()) {
            app_setPollRate(TIMEOUT_20SEC);
            TL_ZB_TIMER_SCHEDULE(forcedReportCb, NULL, TIMEOUT_100MS);
            door_ias(g_appCtx.open);
        } else if (!zb_isDeviceFactoryNew()) {
            zb_rejoinReq(zb_apsChannelMaskGet(), g_bdbAttrs.scanDuration);
        }
    }
}

//static void buttonDoublePressed(u8 btNum) {
//    printf("Command double click\r\n");
//}
//
//static void buttonTriplePressed(u8 btNum) {
//    printf("Command triple click\r\n");
//}
//
//static void buttonQuadruplePressed(u8 btNum) {
//    printf("Command quadruple click\r\n");
//}


static void buttonCheckCommand(uint8_t btNum) {
    button.state = APP_STATE_NORMAL;

    if (button.ctn == 1) {
        buttonSinglePressed(btNum);
//    } else if (button.ctn == 2) {
//        buttonDoublePressed(btNum);
//    } else if (button.ctn == 3) {
//        buttonTriplePressed(btNum);
//    } else if (button.ctn == 4) {
//        buttonQuadruplePressed(btNum);
    }

    button.ctn = 0;
}


void keyScan_keyPressedCB(kb_data_t *kbEvt) {

    u8 keyCode = kbEvt->keycode[0];

    if(keyCode != 0xff) {
        button.pressed_time = clock_time();
        button.state = APP_FACTORY_NEW_SET_CHECK;
        button.ctn++;
        light_blink_start(1, 30, 1);
        if (zb_isDeviceJoinedNwk()) {
        }
    }
}


void keyScan_keyReleasedCB(u8 keyCode){
    if (keyCode != 0xff) {
        button.released_time = clock_time();
        button.state = APP_STATE_RELEASE;

//        button.state = APP_STATE_NORMAL;
    }
}

void button_handler(void) {
    static u8 valid_keyCode = 0xff;

    if (button.state == APP_FACTORY_NEW_SET_CHECK) {
        if(clock_time_exceed(button.pressed_time, TIMEOUT_TICK_5SEC)) {
            buttonKeepPressed(VK_SW1);
        }
    }

    if (button.state == APP_STATE_RELEASE) {
        if(clock_time_exceed(button.released_time, TIMEOUT_TICK_250MS)) {
            buttonCheckCommand(VK_SW1);
        }

    }

    if(kb_scan_key(0, 1)){
        if(kb_event.cnt){
            keyPressed = 1;
            keyScan_keyPressedCB(&kb_event);
            if(kb_event.cnt == 1){
                valid_keyCode = kb_event.keycode[0];
            }
        }else{
            keyScan_keyReleasedCB(valid_keyCode);
            valid_keyCode = 0xff;
            keyPressed = 0;
        }
    }
}

u8 button_idle() {

    if (keyPressed) {
        return true;
    }

    if (button.ctn) return true;

    return false;
}
