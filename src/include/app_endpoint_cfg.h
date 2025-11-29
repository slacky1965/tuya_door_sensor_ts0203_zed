#ifndef SRC_INCLUDE_APP_ENDPOINT_CFG_H_
#define SRC_INCLUDE_APP_ENDPOINT_CFG_H_

#define APP_ENDPOINT1 0x01

/**
 *  @brief Defined for basic cluster attributes
 */
typedef struct{
    uint8_t  zclVersion;
    uint8_t  appVersion;
    uint8_t  stackVersion;
    uint8_t  hwVersion;
    uint8_t  manuName[ZCL_BASIC_MAX_LENGTH];
    uint8_t  modelId[ZCL_BASIC_MAX_LENGTH];
    uint8_t  dateCode[ZCL_BASIC_MAX_LENGTH];
    uint8_t  powerSource;
    uint8_t  genDevClass;                        //attr 8
    uint8_t  genDevType;                         //attr 9
    uint8_t  deviceEnable;
    uint8_t  swBuildId[ZCL_BASIC_MAX_LENGTH];    //attr 4000
} zcl_basicAttr_t;

/**
 *  @brief Defined for identify cluster attributes
 */
typedef struct{
    uint16_t identifyTime;
}zcl_identifyAttr_t;

/**
 *  @brief Defined for power configuration cluster attributes
 */
typedef struct{
    uint8_t  batteryVoltage;      //0x20
    uint8_t  batteryPercentage;   //0x21
}zcl_powerAttr_t;

/**
 *  @brief Defined for ias zone cluster attributes
 */
typedef struct {
    uint8_t     zoneState;
    uint16_t    zoneType;
    uint16_t    zoneStatus;
    extAddr_t   iasCieAddr;
    uint8_t     zoneId;
} zcl_iasZoneAttr_t;


typedef struct {
    uint8_t switchType;
    uint8_t switchActions;
    uint8_t delay_on;
    uint8_t delay_off;
} zcl_onOffSwitchCfgAttr_t;

extern const zcl_specClusterInfo_t g_appEp1ClusterList[];
extern const af_simple_descriptor_t app_ep1Desc;

extern uint8_t APP_EP1_CB_CLUSTER_NUM;

/* Attributes */
extern zcl_basicAttr_t              g_zcl_basicAttrs;
extern zcl_identifyAttr_t           g_zcl_identifyAttrs;
extern zcl_onOffSwitchCfgAttr_t     g_zcl_onOffSwitchCfgAttrs;
extern zcl_iasZoneAttr_t        	g_zcl_iasZoneAttrs;

#define zcl_onOffSwitchCfgAttrGet() &g_zcl_onOffSwitchCfgAttrs
#define zcl_iasZoneAttrGet()    	&g_zcl_iasZoneAttrs

#endif /* SRC_INCLUDE_APP_ENDPOINT_CFG_H_ */
