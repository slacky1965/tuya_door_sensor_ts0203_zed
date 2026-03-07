#include "tl_common.h"
#include "platform.h"

#include "app_types.h"
#include "app_device.h"

void app_gpio_init(int anaRes_init_en) {

    if (*(uint16_t*)(DEVICE_MODEL_CFG_ADDR) == DEVICE_MODEL_CFG_ID) {
        uint8_t model = *(uint8_t*)(DEVICE_MODEL_CFG_ADDR+2);
        if (model >= DEVICE_MODEL_NONE && model < DEVICE_MODEL_MAX) {
            model_in_flash = true;
            device_model = model;
        }
    } else {
        model_in_flash = false;
        device_model = DEVICE_MODEL;
    }


    if (device_model == DEVICE_MODEL_1) {
        /* TS0203 Zbeacon Tuya  - model_1 */
        reg_gpio_pa_setting1 = 0xFFFF80;
        reg_gpio_pa_setting2 = 0x7FFF00;

        //PB group
        //input en
        analog_write(areg_gpio_pb_ie, 0xFD); // bit 7 - PB7 ... 0 - PB0, 1 - en, 0 - dis
        //output en
        reg_gpio_pb_oen = 0xFD; // bit 7 - PB7 ... 0 - PB0, 0 - en, 1 - dis
        //data out
        reg_gpio_pb_out = 0x02; // bit 7 - PB7 ... 0 - PB0, 1 - en, 0, dis
        //ds
        analog_write(areg_gpio_pb_ds, 0xFF);
        //func as GPIO
        reg_gpio_pb_gpio = 0x3F;

        //PC group
        //ie
        analog_write(areg_gpio_pc_ie, 0xD7);

        //oen
        reg_gpio_pc_oen = 0xD7;

        //dataO
        reg_gpio_pc_out = 0x20;

        //ds
        analog_write(areg_gpio_pc_ds, 0xFF);

        reg_gpio_pc_gpio = 0xFF;

        reg_gpio_pd_setting1 = 0xFFFF00;
        reg_gpio_pd_setting2 = 0x7BFF00;

    } else if (device_model == DEVICE_MODEL_2) {
        /* TS0203 _TZ3000_hufxidjp Tuya - model_2 */
        reg_gpio_pa_setting1 = 0xFFFF80;
        reg_gpio_pa_setting2 = 0x7FFF00;

        //PB group
        //input en
        analog_write(areg_gpio_pb_ie, 0xFD); // bit 7 - PB7 ... 0 - PB0, 1 - en, 0 - dis
        //output en
        reg_gpio_pb_oen = 0xFD; // bit 7 - PB7 ... 0 - PB0, 0 - en, 1 - dis
        //data out
        reg_gpio_pb_out = 0x02; // bit 7 - PB7 ... 0 - PB0, 1 - en, 0, dis
        //ds
        analog_write(areg_gpio_pb_ds, 0xFF);
        //func as GPIO
        reg_gpio_pb_gpio = 0x3F;

        //PC group
        //ie
        analog_write(areg_gpio_pc_ie, 0xDB);
        //oen
        reg_gpio_pc_oen = 0xDB;
        //dataO
        reg_gpio_pc_out = 0x20;
        //ds
        analog_write(areg_gpio_pc_ds, 0xFF);
        reg_gpio_pc_gpio = 0xFF;

        reg_gpio_pd_setting1 = 0xFFFF00;
        reg_gpio_pd_setting2 = 0x7BFF00;

    } else if (device_model == DEVICE_MODEL_3) {
        /*
         * TS0203 _TZ3000_6zvw8ham - model_3
         * SNZB-04 SNZB-04_eWeLink - model 3
         */
        reg_gpio_pa_setting1 = 0xFFFF80;
        reg_gpio_pa_setting2 = 0x7FFF00;

        //PB group
        //input en
        analog_write(areg_gpio_pb_ie, 0xED); // bit 7 - PB7 ... 0 - PB0, 1 - en, 0 - dis
        //output en
        reg_gpio_pb_oen = 0xED; // bit 7 - PB7 ... 0 - PB0, 0 - en, 1 - dis
        //data out
        reg_gpio_pb_out = 0x02; // bit 7 - PB7 ... 0 - PB0, 1 - en, 0, dis
        //ds
        analog_write(areg_gpio_pb_ds, 0xFF);
        //func as GPIO
        reg_gpio_pb_gpio = 0x3F;

        //PC group
        //ie
        analog_write(areg_gpio_pc_ie, 0xDF);
        //oen
        reg_gpio_pc_oen = 0xDF;
        //dataO
        reg_gpio_pc_out = 0x20;
        //ds
        analog_write(areg_gpio_pc_ds, 0xFF);
        reg_gpio_pc_gpio = 0xFF;

        reg_gpio_pd_setting1 = 0xFFFF88;
        reg_gpio_pd_setting2 = 0xFBFF00;

    } else if (device_model == DEVICE_MODEL_4) {
        /* ZG-102Z HOBEIAN - model_4
         *
         * button gpio - PB6, as gpio, PM_PIN_PULLUP_1M, input
         * led gpio    - PB4, as gpio, on = 0, off = 1, output
         * door gpio   - PC1, as gpio, input
         * debug gpio  - PB1, as gpio, PM_PIN_PULLUP_1M, output
         */

        reg_gpio_pa_setting1 = 0xFF8080;
        reg_gpio_pa_setting2 = 0x7FFF00;

        //PB group
        //input en
        analog_write(areg_gpio_pb_ie, 0x40); // bit 7 - PB7 ... 0 - PB0, 1 - en, 0 - dis
        //output en
        reg_gpio_pb_oen = 0xED; // bit 7 - PB7 ... 0 - PB0, 0 - en, 1 - dis
        //data out
        reg_gpio_pb_out = 0x12; // bit 7 - PB7 ... 0 - PB0, 1 - en, 0, dis
        //ds
        analog_write(areg_gpio_pb_ds, 0xFF);
        //func as GPIO
        reg_gpio_pb_gpio = 0xFF;

        //PC group
        //ie
        analog_write(areg_gpio_pc_ie, 0x02);

        //oen
        reg_gpio_pc_oen = 0xDF;

        //dataO
        reg_gpio_pc_out = 0x20;

        //ds
        analog_write(areg_gpio_pc_ds, 0xFF);

        reg_gpio_pc_gpio = 0xFF;

        reg_gpio_pd_setting1 = 0xFF0000;
        reg_gpio_pd_setting2 = 0xFFFF00;
    } else {
        reg_gpio_pa_setting1 =
            (PA0_INPUT_ENABLE<<8)   | (PA1_INPUT_ENABLE<<9) | (PA2_INPUT_ENABLE<<10)    | (PA3_INPUT_ENABLE<<11) |
            (PA4_INPUT_ENABLE<<12)  | (PA5_INPUT_ENABLE<<13)    | (PA6_INPUT_ENABLE<<14)    | (PA7_INPUT_ENABLE<<15) |
            ((PA0_OUTPUT_ENABLE?0:1)<<16)   | ((PA1_OUTPUT_ENABLE?0:1)<<17) | ((PA2_OUTPUT_ENABLE?0:1)<<18) | ((PA3_OUTPUT_ENABLE?0:1)<<19) |
            ((PA4_OUTPUT_ENABLE?0:1)<<20)   | ((PA5_OUTPUT_ENABLE?0:1)<<21) | ((PA6_OUTPUT_ENABLE?0:1)<<22) | ((PA7_OUTPUT_ENABLE?0:1)<<23) |
            (PA0_DATA_OUT<<24)  | (PA1_DATA_OUT<<25)    | (PA2_DATA_OUT<<26)    | (PA3_DATA_OUT<<27) |
            (PA4_DATA_OUT<<28)  | (PA5_DATA_OUT<<29)    | (PA6_DATA_OUT<<30)    | (PA7_DATA_OUT<<31) ;
        reg_gpio_pa_setting2 =
            (PA0_DATA_STRENGTH<<8)      | (PA1_DATA_STRENGTH<<9)| (PA2_DATA_STRENGTH<<10)   | (PA3_DATA_STRENGTH<<11) |
            (PA4_DATA_STRENGTH<<12) | (PA5_DATA_STRENGTH<<13)   | (PA6_DATA_STRENGTH<<14)   | (PA7_DATA_STRENGTH<<15) |
            (PA0_FUNC==AS_GPIO ? BIT(16):0) | (PA1_FUNC==AS_GPIO ? BIT(17):0)| (PA2_FUNC==AS_GPIO ? BIT(18):0)| (PA3_FUNC==AS_GPIO ? BIT(19):0) |
            (PA4_FUNC==AS_GPIO ? BIT(20):0) | (PA5_FUNC==AS_GPIO ? BIT(21):0)| (PA6_FUNC==AS_GPIO ? BIT(22):0)| (PA7_FUNC==AS_GPIO ? BIT(23):0);

        //PB group
        //ie
        analog_write(areg_gpio_pb_ie,   (PB0_INPUT_ENABLE<<0)   | (PB1_INPUT_ENABLE<<1) | (PB2_INPUT_ENABLE<<2) | (PB3_INPUT_ENABLE<<3) |
                                        (PB4_INPUT_ENABLE<<4)   | (PB5_INPUT_ENABLE<<5) | (PB6_INPUT_ENABLE<<6) | (PB7_INPUT_ENABLE<<7) );
        //oen
        reg_gpio_pb_oen =
            ((PB0_OUTPUT_ENABLE?0:1)<<0)    | ((PB1_OUTPUT_ENABLE?0:1)<<1) | ((PB2_OUTPUT_ENABLE?0:1)<<2)   | ((PB3_OUTPUT_ENABLE?0:1)<<3) |
            ((PB4_OUTPUT_ENABLE?0:1)<<4)    | ((PB5_OUTPUT_ENABLE?0:1)<<5) | ((PB6_OUTPUT_ENABLE?0:1)<<6)   | ((PB7_OUTPUT_ENABLE?0:1)<<7);
        //dataO
        reg_gpio_pb_out =
            (PB0_DATA_OUT<<0)   | (PB1_DATA_OUT<<1) | (PB2_DATA_OUT<<2) | (PB3_DATA_OUT<<3) |
            (PB4_DATA_OUT<<4)   | (PB5_DATA_OUT<<5) | (PB6_DATA_OUT<<6) | (PB7_DATA_OUT<<7) ;

        //ds
        analog_write(areg_gpio_pb_ds,   (PB0_DATA_STRENGTH<<0)  | (PB1_DATA_STRENGTH<<1)  | (PB2_DATA_STRENGTH<<2)  | (PB3_DATA_STRENGTH<<3) |
                                        (PB4_DATA_STRENGTH<<4)  | (PB5_DATA_STRENGTH<<5)  | (PB6_DATA_STRENGTH<<6)  | (PB7_DATA_STRENGTH<<7) );
        //func
        reg_gpio_pb_gpio =
            (PB0_FUNC==AS_GPIO ? BIT(0):0)  | (PB1_FUNC==AS_GPIO ? BIT(1):0)| (PB2_FUNC==AS_GPIO ? BIT(2):0)| (PB3_FUNC==AS_GPIO ? BIT(3):0) |
            (PB4_FUNC==AS_GPIO ? BIT(4):0)  | (PB5_FUNC==AS_GPIO ? BIT(5):0)| (PB6_FUNC==AS_GPIO ? BIT(6):0)| (PB7_FUNC==AS_GPIO ? BIT(7):0);

        //PC group
        //ie
        analog_write(areg_gpio_pc_ie,   (PC0_INPUT_ENABLE<<0)   | (PC1_INPUT_ENABLE<<1) | (PC2_INPUT_ENABLE<<2) | (PC3_INPUT_ENABLE<<3) |
                                        (PC4_INPUT_ENABLE<<4)   | (PC5_INPUT_ENABLE<<5) | (PC6_INPUT_ENABLE<<6) | (PC7_INPUT_ENABLE<<7) );

        //oen
        reg_gpio_pc_oen =
            ((PC0_OUTPUT_ENABLE?0:1)<<0)    | ((PC1_OUTPUT_ENABLE?0:1)<<1) | ((PC2_OUTPUT_ENABLE?0:1)<<2)   | ((PC3_OUTPUT_ENABLE?0:1)<<3) |
            ((PC4_OUTPUT_ENABLE?0:1)<<4)    | ((PC5_OUTPUT_ENABLE?0:1)<<5) | ((PC6_OUTPUT_ENABLE?0:1)<<6)   | ((PC7_OUTPUT_ENABLE?0:1)<<7);
        //dataO
        reg_gpio_pc_out =
            (PC0_DATA_OUT<<0)   | (PC1_DATA_OUT<<1) | (PC2_DATA_OUT<<2) | (PC3_DATA_OUT<<3) |
            (PC4_DATA_OUT<<4)   | (PC5_DATA_OUT<<5) | (PC6_DATA_OUT<<6) | (PC7_DATA_OUT<<7) ;

        //ds
        analog_write(areg_gpio_pc_ds,   (PC0_DATA_STRENGTH<<0)  | (PC1_DATA_STRENGTH<<1)  | (PC2_DATA_STRENGTH<<2)  | (PC3_DATA_STRENGTH<<3) |
                                        (PC4_DATA_STRENGTH<<4)  | (PC5_DATA_STRENGTH<<5)  | (PC6_DATA_STRENGTH<<6)  | (PC7_DATA_STRENGTH<<7) );

        reg_gpio_pc_gpio =
            (PC0_FUNC==AS_GPIO ? BIT(0):0)  | (PC1_FUNC==AS_GPIO ? BIT(1):0)| (PC2_FUNC==AS_GPIO ? BIT(2):0)| (PC3_FUNC==AS_GPIO ? BIT(3):0) |
            (PC4_FUNC==AS_GPIO ? BIT(4):0)  | (PC5_FUNC==AS_GPIO ? BIT(5):0)| (PC6_FUNC==AS_GPIO ? BIT(6):0)| (PC7_FUNC==AS_GPIO ? BIT(7):0);

        //PD group
        reg_gpio_pd_setting1 =
            (PD0_INPUT_ENABLE<<8)   | (PD1_INPUT_ENABLE<<9) | (PD2_INPUT_ENABLE<<10)    | (PD3_INPUT_ENABLE<<11) |
            (PD4_INPUT_ENABLE<<12)  | (PD5_INPUT_ENABLE<<13)| (PD6_INPUT_ENABLE<<14)    | (PD7_INPUT_ENABLE<<15) |
            ((PD0_OUTPUT_ENABLE?0:1)<<16)   | ((PD1_OUTPUT_ENABLE?0:1)<<17) | ((PD2_OUTPUT_ENABLE?0:1)<<18) | ((PD3_OUTPUT_ENABLE?0:1)<<19) |
            ((PD4_OUTPUT_ENABLE?0:1)<<20)   | ((PD5_OUTPUT_ENABLE?0:1)<<21) | ((PD6_OUTPUT_ENABLE?0:1)<<22) | ((PD7_OUTPUT_ENABLE?0:1)<<23) |
            (PD0_DATA_OUT<<24)  | (PD1_DATA_OUT<<25)    | (PD2_DATA_OUT<<26)    | (PD3_DATA_OUT<<27) |
            (PD4_DATA_OUT<<28)  | (PD5_DATA_OUT<<29)    | (PD6_DATA_OUT<<30)    | (PD7_DATA_OUT<<31) ;
        reg_gpio_pd_setting2 =
            (PD0_DATA_STRENGTH<<8)  | (PD1_DATA_STRENGTH<<9)    | (PD2_DATA_STRENGTH<<10)   | (PD3_DATA_STRENGTH<<11) |
            (PD4_DATA_STRENGTH<<12) | (PD5_DATA_STRENGTH<<13)   | (PD6_DATA_STRENGTH<<14)   | (PD7_DATA_STRENGTH<<15) |
            (PD0_FUNC==AS_GPIO ? BIT(16):0) | (PD1_FUNC==AS_GPIO ? BIT(17):0)| (PD2_FUNC==AS_GPIO ? BIT(18):0)| (PD3_FUNC==AS_GPIO ? BIT(19):0) |
            (PD4_FUNC==AS_GPIO ? BIT(20):0) | (PD5_FUNC==AS_GPIO ? BIT(21):0)| (PD6_FUNC==AS_GPIO ? BIT(22):0)| (PD7_FUNC==AS_GPIO ? BIT(23):0);

    }


    //PE group
    reg_gpio_pe_ie = (PE0_INPUT_ENABLE<<0)  | (PE1_INPUT_ENABLE<<1)| (PE2_INPUT_ENABLE<<2)  | (PE3_INPUT_ENABLE<<3);
    reg_gpio_pe_oen = ((PE0_OUTPUT_ENABLE?0:1)<<0)  | ((PE1_OUTPUT_ENABLE?0:1)<<1) | ((PE2_OUTPUT_ENABLE?0:1)<<2)   | ((PE3_OUTPUT_ENABLE?0:1)<<3);
    reg_gpio_pe_out = (PE0_DATA_OUT<<0) | (PE1_DATA_OUT<<1) | (PE2_DATA_OUT<<2) | (PE3_DATA_OUT<<3);
    reg_gpio_pe_ds = (PE0_DATA_STRENGTH<<0) | (PE1_DATA_STRENGTH<<1)    | (PE2_DATA_STRENGTH<<2)    | (PE3_DATA_STRENGTH<<3);
    reg_gpio_pe_gpio = (PE0_FUNC==AS_GPIO ? BIT(0):0)   | (PE1_FUNC==AS_GPIO ? BIT(1):0)| (PE2_FUNC==AS_GPIO ? BIT(2):0)| (PE3_FUNC==AS_GPIO ? BIT(3):0);


    if(anaRes_init_en)
    {
        gpio_analog_resistance_init();
        if (device_model == DEVICE_MODEL_1) {
            // WakeUp src PB0-PB3
            analog_write (0x10, 0x04);
            // WakeUp src PB4-PB7
            analog_write (0x11, 0x04);
        } else if (device_model == DEVICE_MODEL_2) {
            // WakeUp src PB0-PB3
            analog_write (0x10, 0x04);
            // WakeUp src PC0-PC3
            analog_write (0x12, 0x40);
        } else if (device_model == DEVICE_MODEL_3) {
            // WakeUp src PB0-PB3
            analog_write (0x10, 0x04);
            // WakeUp sec PD0-PD3
            analog_write (0x14, 0x40);
        } else if (device_model == DEVICE_MODEL_4) {
            // WakeUp src PB0-PB3
            analog_write (0x10, 0x04);
            // WakeUp src PB4-PB7
            analog_write (0x11, 0x10);
        }
    }
}


