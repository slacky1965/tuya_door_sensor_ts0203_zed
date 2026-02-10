#ifndef SRC_INCLUDE_APP_DEVICE_H_
#define SRC_INCLUDE_APP_DEVICE_H_

#ifndef DEVICE_MODEL
#define DEVICE_MODEL    DEVICE_DOOR_NONE
#endif

#define DEVICE_EN(d)    (d?1:0)
#define LED_ON(d)       (d?1:0)
#define LED_OFF(d)      (d?1:0)

typedef enum {
    DEVICE_DOOR_NONE  = 0,
    DEVICE_DOOR_1,                        /* TS0203 Zbeacon Tuya          */
    DEVICE_DOOR_2,                        /* TS0203 _TZ3000_hufxidjp Tuya */
    DEVICE_DOOR_MAX
} device_door_model_t;

typedef struct __attribute__((packed)) {
    uint32_t            gpio;
    uint8_t             input;
    uint8_t             output;
    GPIO_FuncTypeDef    func;
    GPIO_PullTypeDef    pull;
} device_gpio_t;

typedef struct __attribute__((packed)) {
    uint8_t             device_en :1;
    uint8_t             len_on :1;
    uint8_t             len_off :1;
    uint8_t             reserve :5;
    uint8_t             button_max;
    device_gpio_t       button_gpio;
    device_gpio_t       led_gpio;
    device_gpio_t       door_gpio;
    uint8_t             door_debounce;
    device_gpio_t       debug_gpio;
} door_device_t;

extern device_door_model_t device_door_model;
extern door_device_t door_device[DEVICE_DOOR_MAX];
extern door_device_t *device;

void device_model_restore();
void device_model_save(uint8_t model);
void device_init();

#endif /* SRC_INCLUDE_APP_DEVICE_H_ */
