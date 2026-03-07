#ifndef SRC_INCLUDE_APP_DEVICE_H_
#define SRC_INCLUDE_APP_DEVICE_H_

#define DEVICE_MODEL_CFG_ADDR  0x75000
#define DEVICE_MODEL_CFG_ID    0x1465

#ifndef DEVICE_MODEL
#define DEVICE_MODEL    DEVICE_MODEL_NONE
#endif

#define DEVICE_EN(d)    (d?1:0)
#define LED_ON(d)       (d?1:0)
#define LED_OFF(d)      (d?1:0)

typedef enum {
    DEVICE_MODEL_NONE = 0,
    DEVICE_MODEL_1,                        /* TS0203 Zbeacon Tuya          */
    DEVICE_MODEL_2,                        /* TS0203 _TZ3000_hufxidjp Tuya */
    DEVICE_MODEL_3,                        /* TS0203 _TZ3000_6zvw8ham Tuya */
    DEVICE_MODEL_4,                        /* ZG-102Z HOBEIAN HOBEIAN      */
    DEVICE_MODEL_MAX
} device_model_t;

typedef struct __attribute__((packed)) {
    uint16_t id;
    uint8_t  device_model;
    uint8_t  crc;
} config_door_model_t;

typedef struct __attribute__((packed)) {
    uint32_t            gpio;
    uint8_t             input;
    uint8_t             output;
    GPIO_FuncTypeDef    func;
    GPIO_PullTypeDef    pull;
} device_gpio_t;

typedef struct __attribute__((packed)) {
    uint8_t             device_en :1;
    uint8_t             led_on :1;
    uint8_t             led_off :1;
    uint8_t             debug_out :1;
    uint8_t             reserve :4;
    device_gpio_t       button_gpio;
    device_gpio_t       led_gpio;
    device_gpio_t       door_gpio;
    uint8_t             door_debounce;
    device_gpio_t       debug_gpio;
} device_door_t;

extern device_model_t device_model;
extern device_door_t device_door[DEVICE_MODEL_MAX];
extern device_door_t *device;
extern bool model_in_flash;

void device_model_restore();
void device_model_save(uint8_t model);
void device_init();

#endif /* SRC_INCLUDE_APP_DEVICE_H_ */
