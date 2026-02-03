#ifndef SRC_COMMON_BOARD_TS0203_HUFXIDJP_H_
#define SRC_COMMON_BOARD_TS0203_HUFXIDJP_H_

#if (BOARD == BOARD_TS0203_TZ3000_hufxidjp)

/**********************************************************************
 * Product Information
 */

#define ZCL_BASIC_MFG_NAME     {10,'S','l','a','c','k','y','-','D','I','Y'}
#define ZCL_BASIC_MODEL_ID     {14,'T','S','0','2','0','3','-','z','2','6','-','S','l','D'}

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
#define LED1                    GPIO_PC2
#define PC2_FUNC                AS_GPIO
#define PC2_OUTPUT_ENABLE       ON
#define PC2_INPUT_ENABLE        OFF
#define PC2_DATA_OUT            LED_OFF


/************************* Configure DOOR GPIO **************************************/
#define DOOR_GPIO               GPIO_PB5
#define PB5_INPUT_ENABLE        ON
#define PB5_DATA_OUT            OFF
#define PB5_OUTPUT_ENABLE       OFF
#define PB5_FUNC                AS_GPIO
//#define PULL_WAKEUP_SRC_PC0     PM_PIN_PULLDOWN_100K //PM_PIN_PULLUP_1M

/************************* Configure KEY GPIO ***************************************/
#define MAX_BUTTON_NUM  1

#define BUTTON1                 GPIO_PC3
#define PC3_FUNC                AS_GPIO
#define PC3_OUTPUT_ENABLE       OFF
#define PC3_INPUT_ENABLE        ON
#define PULL_WAKEUP_SRC_PC3     PM_PIN_PULLUP_1M

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

#endif /* (BOARD == BOARD_TS0203_TZ3000_hufxidjp) */


#endif /* SRC_COMMON_BOARD_TS0203_HUFXIDJP_H_ */
