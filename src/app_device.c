#include "app_main.h"

static bool first_start = true;
static uint8_t zb_modelId[10] = {8,'M','o','d','e','l',' ','0','0',0};


device_door_t device_door[DEVICE_MODEL_MAX];
device_model_t device_model = DEVICE_MODEL;
device_door_t *device = &device_door[DEVICE_MODEL];
bool model_in_flash = false;

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

    device = &device_door[device_model];
    if (device_model == DEVICE_MODEL_NONE) {
        device_gpio_init(&device->button_gpio);
    } else {
        device->device_en = ON;
//        device_gpio_init(&device->button_gpio);
//        device_gpio_init(&device->led_gpio);
//        device_gpio_init(&device->door_gpio);
#if UART_PRINTF_MODE
        device_gpio_init(&device->debug_gpio);
        gpio_write(device->debug_gpio.gpio, 1);
#endif
        light_init();
    }
    kb_drv_init();

    switch(device_model) {
        case DEVICE_MODEL_1:
            zb_modelId[7] = '0';
            zb_modelId[8] = '1';
            break;
        case DEVICE_MODEL_2:
            zb_modelId[7] = '0';
            zb_modelId[8] = '2';
            break;
        case DEVICE_MODEL_3:
            zb_modelId[7] = '0';
            zb_modelId[8] = '3';
            break;
        case DEVICE_MODEL_4:
            zb_modelId[7] = '0';
            zb_modelId[8] = '4';
            break;
        default:
            zb_modelId[7] = '0';
            zb_modelId[8] = '0';
            break;
    }
    memcpy(g_zcl_basicAttrs.productLabel, zb_modelId, 9);
    g_zcl_onOffSwitchCfgAttrs.model = device_model;
}

void device_model_restore() {

    config_door_model_t model_cfg;

    flash_read_page(DEVICE_MODEL_CFG_ADDR, sizeof(config_door_model_t), (uint8_t*)&model_cfg);

    if (model_cfg.id == DEVICE_MODEL_CFG_ID && model_cfg.crc == checksum((uint8_t*)&model_cfg, sizeof(config_door_model_t)-1)) {
        device_model = model_cfg.device_model;
        DEBUG(UART_PRINTF_MODE, "Model restore: model_%d\r\n", device_model);
        device_model_init();
    } else {
        device_model = DEVICE_MODEL;
        DEBUG(UART_PRINTF_MODE, "Default model: model_%d\r\n", device_model);
        device_model_save(device_model);
        device_model_init();
    }
}

void device_model_save(uint8_t model) {
    config_door_model_t model_cfg;

    model_cfg.id = DEVICE_MODEL_CFG_ID;
    device_model = model_cfg.device_model = model;

    flash_erase(DEVICE_MODEL_CFG_ADDR);
    model_cfg.crc = checksum((uint8_t*)&(model_cfg), sizeof(config_door_model_t)-1);
    flash_write(DEVICE_MODEL_CFG_ADDR, sizeof(config_door_model_t), (uint8_t*)&(model_cfg));

    DEBUG(UART_PRINTF_MODE, "Model save: model_%d\r\n", device_model);

}

void device_init() {
    uint8_t devi = DEVICE_MODEL_NONE;

    if (first_start) {

        first_start = false;
        memset(&device_door, 0, sizeof(device_door));

        /* None device - model_0 */
        device_door[devi].device_en = OFF;
        device_door[devi].door_gpio.gpio = GPIO_PC6;    /* Fake gpio for 32pin chip */
        device_door[devi].door_gpio.input = ON;
        device_door[devi].door_gpio.output = OFF;
        device_door[devi].door_gpio.func = AS_GPIO;
        device_door[devi].debug_gpio.gpio = GPIO_PB1;
        device_door[devi].debug_gpio.input = OFF;
        device_door[devi].debug_gpio.output = ON;
        device_door[devi].debug_gpio.func = AS_GPIO;
        device_door[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        /* TS0203 Zbeacon Tuya  - model_1 */
        device_door[devi].device_en = OFF;
        device_door[devi].button_gpio.gpio = GPIO_PB5;
        device_door[devi].button_gpio.input = ON;
        device_door[devi].button_gpio.output = OFF;
        device_door[devi].button_gpio.func = AS_GPIO;
        device_door[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        device_door[devi].led_gpio.gpio = GPIO_PC3;
        device_door[devi].led_gpio.input = OFF;
        device_door[devi].led_gpio.output = ON;
        device_door[devi].led_gpio.func = AS_GPIO;
        device_door[devi].led_on = 1;
        device_door[devi].led_off = 0;
        device_door[devi].door_gpio.gpio = GPIO_PC0;
        device_door[devi].door_gpio.input = ON;
        device_door[devi].door_gpio.output = OFF;
        device_door[devi].door_gpio.func = AS_GPIO;
        device_door[devi].door_debounce = DOOR_DEBOUNCE_MS;
        device_door[devi].debug_gpio.gpio = GPIO_PB1;
        device_door[devi].debug_gpio.input = OFF;
        device_door[devi].debug_gpio.output = ON;
        device_door[devi].debug_gpio.func = AS_GPIO;
        device_door[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        /* TS0203 _TZ3000_hufxidjp Tuya - model_2 */
        device_door[devi].device_en = OFF;
        device_door[devi].button_gpio.gpio = GPIO_PC3;
        device_door[devi].button_gpio.input = ON;
        device_door[devi].button_gpio.output = OFF;
        device_door[devi].button_gpio.func = AS_GPIO;
        device_door[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        device_door[devi].led_gpio.gpio = GPIO_PC2;
        device_door[devi].led_gpio.input = OFF;
        device_door[devi].led_gpio.output = ON;
        device_door[devi].led_gpio.func = AS_GPIO;
        device_door[devi].led_on = 1;
        device_door[devi].led_off = 0;
        device_door[devi].door_gpio.gpio = GPIO_PB5;
        device_door[devi].door_gpio.input = ON;
        device_door[devi].door_gpio.output = OFF;
        device_door[devi].door_gpio.func = AS_GPIO;
        device_door[devi].door_debounce = DOOR_DEBOUNCE_MS;
        device_door[devi].debug_gpio.gpio = GPIO_PB1;
        device_door[devi].debug_gpio.input = OFF;
        device_door[devi].debug_gpio.output = ON;
        device_door[devi].debug_gpio.func = AS_GPIO;
        device_door[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        /*
         * TS0203 _TZ3000_6zvw8ham - model_3
         * SNZB-04 SNZB-04_eWeLink - model 3
         */
        device_door[devi].device_en = OFF;
        device_door[devi].button_gpio.gpio = GPIO_PD3;
        device_door[devi].button_gpio.input = ON;
        device_door[devi].button_gpio.output = OFF;
        device_door[devi].button_gpio.func = AS_GPIO;
        device_door[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        device_door[devi].led_gpio.gpio = GPIO_PB4;
        device_door[devi].led_gpio.input = OFF;
        device_door[devi].led_gpio.output = ON;
        device_door[devi].led_gpio.func = AS_GPIO;
        device_door[devi].led_on = 1;
        device_door[devi].led_off = 0;
        device_door[devi].door_gpio.gpio = GPIO_PD7;
        device_door[devi].door_gpio.input = ON;
        device_door[devi].door_gpio.output = OFF;
        device_door[devi].door_gpio.func = AS_GPIO;
        device_door[devi].door_debounce = DOOR_DEBOUNCE_MS;
        device_door[devi].debug_gpio.gpio = GPIO_PB1;
        device_door[devi].debug_gpio.input = OFF;
        device_door[devi].debug_gpio.output = ON;
        device_door[devi].debug_gpio.func = AS_GPIO;
        device_door[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        /* ZG-102Z HOBEIAN - model_4 */
        device_door[devi].device_en = OFF;
        device_door[devi].button_gpio.gpio = GPIO_PB6;
        device_door[devi].button_gpio.input = ON;
        device_door[devi].button_gpio.output = OFF;
        device_door[devi].button_gpio.func = AS_GPIO;
        device_door[devi].button_gpio.pull = PM_PIN_PULLUP_1M;
        device_door[devi].led_gpio.gpio = GPIO_PB4;
        device_door[devi].led_gpio.input = OFF;
        device_door[devi].led_gpio.output = ON;
        device_door[devi].led_gpio.func = AS_GPIO;
        device_door[devi].led_on = 0;
        device_door[devi].led_off = 1;
        device_door[devi].door_gpio.gpio = GPIO_PC1;
        device_door[devi].door_gpio.input = ON;
        device_door[devi].door_gpio.output = OFF;
        device_door[devi].door_gpio.func = AS_GPIO;
        device_door[devi].door_debounce = DOOR_DEBOUNCE_MS;
        device_door[devi].debug_gpio.gpio = GPIO_PB1;
        device_door[devi].debug_gpio.input = OFF;
        device_door[devi].debug_gpio.output = ON;
        device_door[devi].debug_gpio.func = AS_GPIO;
        device_door[devi++].debug_gpio.pull = PM_PIN_PULLUP_1M;

        if (model_in_flash) {
            device_model_init();
        } else {
            device_model_restore();
        }
    } else {
        device_model_init();
    }
}
