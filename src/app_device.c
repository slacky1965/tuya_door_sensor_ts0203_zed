#include "app_main.h"

#define ADDR_DEVICE_DOOR_CFG  0x75000
#define ID_DEVICE_DOOR_CFG    0x1465

typedef struct {
    uint16_t id;
    uint8_t  device_model;
    uint8_t  crc;
} config_door_model_t;

static bool first_start = true;

door_device_t door_device[DEVICE_DOOR_MAX];
device_door_model_t device_door_model = DEVICE_MODEL;
door_device_t *device = &door_device[DEVICE_DOOR_NONE];

static uint8_t checksum(uint8_t *data, uint16_t length) {

    uint8_t crc8 = 0;

    for(uint8_t i = 0; i < length; i++) {
        crc8 += data[i];
    }

    return crc8;
}

static void device_gpio_init(device_gpio_t *device_gpio) {

    drv_gpio_func_set(device_gpio->gpio);
    drv_gpio_output_en(device_gpio->gpio, device_gpio->output);
    drv_gpio_input_en(device_gpio->gpio, device_gpio->input);
    if (device_gpio->pull) drv_gpio_up_down_resistor(device_gpio->gpio, device_gpio->pull);
}

static void device_model_init() {

    device = &door_device[device_door_model];
    gpio_init(TRUE);
    /* ADC */
#if VOLTAGE_DETECT_ENABLE
    drv_adc_init();
    drv_adc_mode_pin_set(DRV_ADC_VBAT_MODE, VOLTAGE_DETECT_ADC_PIN);
    drv_adc_enable(ON);
#endif
    if (device_door_model == DEVICE_DOOR_NONE) {
        device_gpio_init(&device->button_gpio);
    } else {
        device_gpio_init(&device->button_gpio);
        device_gpio_init(&device->led_gpio);
        device_gpio_init(&device->door_gpio);
#if UART_PRINTF_MODE
        device_gpio_init(&device->debug_gpio);
        gpio_write(device->debug_gpio.gpio, 1);
#endif
        light_init();
    }
    kb_drv_init();
}

void device_model_restore() {

    config_door_model_t model_cfg;

    flash_read_page(ADDR_DEVICE_DOOR_CFG, sizeof(config_door_model_t), (uint8_t*)&model_cfg);

    if (model_cfg.id == ID_DEVICE_DOOR_CFG && model_cfg.crc == checksum((uint8_t*)&model_cfg, sizeof(config_door_model_t)-1)) {
        device_door_model = model_cfg.device_model;
#if UART_PRINTF_MODE
        printf("Model restore: model_%d\r\n", device_door_model);
#endif
        device_model_init();
    } else {
        device_door_model = DEVICE_MODEL;
#if UART_PRINTF_MODE
        printf("Default model: model_%d\r\n", device_door_model);
#endif
        device_model_save(device_door_model);
    }
}

void device_model_save(uint8_t model) {
    config_door_model_t model_cfg;

    model_cfg.id = ID_DEVICE_DOOR_CFG;
    device_door_model = model_cfg.device_model = model;

    flash_erase(ADDR_DEVICE_DOOR_CFG);
    model_cfg.crc = checksum((uint8_t*)&(model_cfg), sizeof(config_door_model_t)-1);
    flash_write(ADDR_DEVICE_DOOR_CFG, sizeof(config_door_model_t), (uint8_t*)&(model_cfg));

#if UART_PRINTF_MODE
    printf("Model save: model_%d\r\n", device_door_model);
#endif

    device_model_init();
}

void device_init() {
    uint8_t devi = DEVICE_DOOR_NONE;

    if (first_start) {
        first_start = false;
        memset(&door_device, 0, sizeof(door_device));

        /* None device - model_0 */
        door_device[devi].device_en = OFF;
        door_device[devi].door_gpio.gpio = GPIO_PC6;    /* Fake gpio for 32pin chip */
        door_device[devi].door_gpio.input = ON;
        door_device[devi].door_gpio.output = OFF;
        door_device[devi++].door_gpio.func = AS_GPIO;

        /* TS0203 Zbeacon Tuya  - model_1 */
        door_device[devi].device_en = ON;
        door_device[devi].button_max = 1;
        door_device[devi].button_gpio.gpio = GPIO_PB5;
        door_device[devi].button_gpio.input = ON;
        door_device[devi].button_gpio.output = OFF;
        door_device[devi].button_gpio.func = AS_GPIO;
        door_device[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        door_device[devi].led_gpio.gpio = GPIO_PC3;
        door_device[devi].led_gpio.input = OFF;
        door_device[devi].led_gpio.output = ON;
        door_device[devi].led_gpio.func = AS_GPIO;
        door_device[devi].len_on = 1;
        door_device[devi].len_off = 0;
        door_device[devi].door_gpio.gpio = GPIO_PC0;
        door_device[devi].door_gpio.input = ON;
        door_device[devi].door_gpio.output = OFF;
        door_device[devi].door_gpio.func = AS_GPIO;
        door_device[devi].door_debounce = 64;
        door_device[devi].debug_gpio.gpio = GPIO_PB1;
        door_device[devi].debug_gpio.input = OFF;
        door_device[devi].debug_gpio.output = ON;
        door_device[devi].debug_gpio.func = AS_GPIO;
        door_device[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        /* TS0203 _TZ3000_hufxidjp Tuya - model_2 */
        door_device[devi].device_en = ON;
        door_device[devi].button_max = 1;
        door_device[devi].button_gpio.gpio = GPIO_PC3;
        door_device[devi].button_gpio.input = ON;
        door_device[devi].button_gpio.output = OFF;
        door_device[devi].button_gpio.func = AS_GPIO;
        door_device[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        door_device[devi].led_gpio.gpio = GPIO_PC2;
        door_device[devi].led_gpio.input = OFF;
        door_device[devi].led_gpio.output = ON;
        door_device[devi].led_gpio.func = AS_GPIO;
        door_device[devi].len_on = 1;
        door_device[devi].len_off = 0;
        door_device[devi].door_gpio.gpio = GPIO_PB5;
        door_device[devi].door_gpio.input = ON;
        door_device[devi].door_gpio.output = OFF;
        door_device[devi].door_gpio.func = AS_GPIO;
        door_device[devi].door_debounce = 16;
        door_device[devi].debug_gpio.gpio = UART_TX_PB1;
        door_device[devi].debug_gpio.input = OFF;
        door_device[devi].debug_gpio.output = ON;
        door_device[devi].debug_gpio.func = AS_GPIO;
        door_device[devi].debug_gpio.pull = PM_PIN_PULLUP_1M;

        device_model_restore();
    } else {
        device_model_init();
    }
}
