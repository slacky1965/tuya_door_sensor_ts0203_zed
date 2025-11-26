#pragma once

/* Enable C linkage for C++ Compilers: */
#if defined(__cplusplus)
extern "C" {
#endif

/* boadr on BT3L (TLSR8250F512ET32) */

/**************************** Configure UART ***************************************/
#if UART_PRINTF_MODE
#define DEBUG_INFO_TX_PIN       GPIO_PB1
#define DEBUG_BAUDRATE          115200
#endif /* UART_PRINTF_MODE */

/********************* Configure External Battery GPIO ******************************/
#define VOLTAGE_DETECT_PIN      GPIO_PC5

/***************************** Configure LED  ***************************************/

#define LED_ON                  1
#define LED_OFF                 0
#define LED1		            GPIO_PC3
#define PC3_FUNC                AS_GPIO
#define PC3_OUTPUT_ENABLE       ON
#define PC3_INPUT_ENABLE        OFF
#define PC3_DATA_OUT            LED_OFF


/************************* Configure DOOR GPIO **************************************/
#define DOOR_GPIO               GPIO_PC0
#define PC0_INPUT_ENABLE        ON
#define PC0_DATA_OUT            OFF
#define PC0_OUTPUT_ENABLE       OFF
#define PC0_FUNC                AS_GPIO
//#define PULL_WAKEUP_SRC_PC0     PM_PIN_PULLDOWN_100K //PM_PIN_PULLUP_1M

/************************* Configure KEY GPIO ***************************************/
#define MAX_BUTTON_NUM  1

#define BUTTON1                 GPIO_PB5
#define PB5_FUNC                AS_GPIO
#define PB5_OUTPUT_ENABLE       OFF
#define PB5_INPUT_ENABLE        ON
#define PULL_WAKEUP_SRC_PB5     PM_PIN_PULLUP_1M

#define PM_WAKEUP_LEVEL         PM_WAKEUP_LEVEL_LOW // only for KEY

enum {
    VK_SW1 = 0x01,
};

#define KB_MAP_NORMAL   {\
        {VK_SW1,}}

#define KB_MAP_NUM      KB_MAP_NORMAL
#define KB_MAP_FN       KB_MAP_NORMAL

#define KB_DRIVE_PINS  {NULL }
#define KB_SCAN_PINS   {BUTTON1}


/* Disable C linkage for C++ Compilers: */
#if defined(__cplusplus)
}
#endif
