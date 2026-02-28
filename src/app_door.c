#include "app_main.h"

#define DOOR_CLOSE			0x00
#define DOOR_OPEN			0x01

static uint8_t open_count = 0;
static uint8_t close_count = 0;
static uint32_t time_open = 0;
static uint32_t time_close = 0;

static ev_timer_event_t *timerDelayOnEvt = NULL;
static ev_timer_event_t *timerDelayOffEvt = NULL;

bool repeat_onoff_cmd = false;

static int32_t delay_onCb(void *args) {

    uint8_t cmd_onoff = (uint8_t)((uint32_t)args);
    cmdOnOff(cmd_onoff, ONOFF_CMD_CHECK_ANSWER);

    timerDelayOnEvt = NULL;
    return -1;
}

static int32_t delay_offCb(void *args) {

    uint8_t cmd_onoff = (uint8_t)((uint32_t)args);
    cmdOnOff(cmd_onoff, ONOFF_CMD_CHECK_ANSWER);

    timerDelayOffEvt = NULL;
    return -1;
}

void door_handler() {

    zcl_onOffSwitchCfgAttr_t *onoffCfgAttrs = zcl_onOffSwitchCfgAttrGet();
    uint8_t cmd_onoff;

    if (zb_getLocalShortAddr() >= 0xFFF8) return;
    if (!zb_isDeviceJoinedNwk()) zb_rejoinReq(zb_apsChannelMaskGet(), g_bdbAttrs.scanDuration);

    if (drv_gpio_read(device->door_gpio.gpio)) {
        close_count = 0;
        if (!g_appCtx.open) {
            if (!open_count) {
                open_count++;
                time_open = clock_time();
            } else if (open_count == 1) {
                if (clock_time_exceed(time_open, device->door_debounce * 1000)) {
                    open_count++;
                }
            }
            if (open_count == 2) {
                g_appCtx.open = true;
                light_blink_stop();
                light_blink_start(1, 30, 30);
                DEBUG(DEBUG_DOOR_EN, "door is open\r\n");
                open_count++;
                door_ias(DOOR_OPEN);
                cmd_onoff = ZCL_CMD_ONOFF_ON;
                switch(onoffCfgAttrs->switchActions) {
                    case ZCL_SWITCH_ACTION_OFF_ON:
                        cmd_onoff = ZCL_CMD_ONOFF_ON;
                        break;
                    case ZCL_SWITCH_ACTION_ON_OFF:
                        cmd_onoff = ZCL_CMD_ONOFF_OFF;
                        break;
                    case ZCL_SWITCH_ACTION_TOGGLE:
                        cmd_onoff = ZCL_CMD_ONOFF_TOGGLE;
                        break;
                    default:
                        break;
                }
                if (timerDelayOffEvt) {
                    TL_ZB_TIMER_CANCEL(&timerDelayOffEvt);
                }
                if (onoffCfgAttrs->delay_on) {
                    if (timerDelayOnEvt) {
                        TL_ZB_TIMER_CANCEL(&timerDelayOnEvt);
                    }
                    timerDelayOnEvt = TL_ZB_TIMER_SCHEDULE(delay_onCb, (void *)((uint32_t)cmd_onoff), onoffCfgAttrs->delay_on * 1000);
                } else {
                    cmdOnOff(cmd_onoff, ONOFF_CMD_CHECK_ANSWER);
                }
            }
        }
    } else {
        open_count = 0;
        if (g_appCtx.open) {
            if (!close_count) {
                close_count++;
                time_close = clock_time();
            } else if (close_count == 1) {
                if (clock_time_exceed(time_close, device->door_debounce * 1000)) {
                    close_count++;
                }
            }
            if (close_count == 2) {
                g_appCtx.open = false;
                light_blink_stop();
                light_blink_start(1, 30, 30);
                DEBUG(DEBUG_DOOR_EN, "door is close\r\n");
                close_count++;
                door_ias(DOOR_CLOSE);
                cmd_onoff = ZCL_SWITCH_ACTION_ON_OFF;
                switch(onoffCfgAttrs->switchActions) {
                    case ZCL_SWITCH_ACTION_OFF_ON:
                        cmd_onoff = ZCL_CMD_ONOFF_OFF;
                        break;
                    case ZCL_SWITCH_ACTION_ON_OFF:
                        cmd_onoff = ZCL_CMD_ONOFF_ON;
                        break;
                    case ZCL_SWITCH_ACTION_TOGGLE:
                        cmd_onoff = ZCL_CMD_ONOFF_TOGGLE;
                        break;
                    default:
                        break;
                }
                if (timerDelayOnEvt) {
                    TL_ZB_TIMER_CANCEL(&timerDelayOnEvt);
                }
                if (onoffCfgAttrs->delay_off) {
                    if (timerDelayOffEvt) {
                        TL_ZB_TIMER_CANCEL(&timerDelayOffEvt);
                    }
                    timerDelayOffEvt = TL_ZB_TIMER_SCHEDULE(delay_offCb, (void *)((uint32_t)cmd_onoff), onoffCfgAttrs->delay_off * 1000);
                } else {
                    cmdOnOff(cmd_onoff, ONOFF_CMD_CHECK_ANSWER);
                }
            }
        }
    }

    if (repeat_onoff_cmd) {
        repeat_onoff_cmd = false;
        cmdOnOff(0, ONOFF_CMD_REPEAT);
    }
}


bool door_idle() {
	if ((open_count == 0 && close_count == 1) || (open_count == 1 && close_count == 0)) return true;
    return false;
}

