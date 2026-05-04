#ifndef SRC_INCLUDE_APP_LED_H_
#define SRC_INCLUDE_APP_LED_H_

typedef struct {
    ev_timer_event_t *timerLedEvt;
    uint16_t ledOnTime;
    uint16_t ledOffTime;
    bool     ledStatus;
    uint8_t  oriSta;     //original state before blink
    uint8_t  sta;        //current state in blink
    uint8_t  times;      //blink times
} app_light_t;

void light_blink_start(uint8_t times, uint16_t ledOnTime, uint16_t ledOffTime);
void light_blink_stop(void);

void light_init(void);
void light_on(void);
void light_off(void);

void led_on(uint32_t pin);
void led_off(uint32_t pin);
bool led_status();

#endif /* SRC_INCLUDE_APP_LED_H_ */
