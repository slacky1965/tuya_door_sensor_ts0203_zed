#include "app_main.h"

static void forceReportBattery(void *args) {

    struct report_t {
        u8 numAttr;
        zclReport_t attr[2];
    };

    struct report_t report;

    epInfo_t dstEpInfo;
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);

    dstEpInfo.profileId = HA_PROFILE_ID;
    dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;

    report.numAttr = 0;

    zclAttrInfo_t *pAttrEntry;

    pAttrEntry = zcl_findAttribute(APP_ENDPOINT1, ZCL_CLUSTER_GEN_POWER_CFG, ZCL_ATTRID_BATTERY_VOLTAGE);

    if (pAttrEntry) {
        report.attr[report.numAttr].attrID = pAttrEntry->id;
        report.attr[report.numAttr].dataType = pAttrEntry->type;
        report.attr[report.numAttr].attrData = pAttrEntry->data;
        report.numAttr++;
    }

    pAttrEntry = zcl_findAttribute(APP_ENDPOINT1, ZCL_CLUSTER_GEN_POWER_CFG, ZCL_ATTRID_BATTERY_PERCENTAGE_REMAINING);

    if (pAttrEntry) {
        report.attr[report.numAttr].attrID = pAttrEntry->id;
        report.attr[report.numAttr].dataType = pAttrEntry->type;
        report.attr[report.numAttr].attrData = pAttrEntry->data;
        report.numAttr++;
    }

    if (report.numAttr) {
        zcl_sendReportAttrsCmd(APP_ENDPOINT1, &dstEpInfo, TRUE, ZCL_FRAME_SERVER_CLIENT_DIR, ZCL_CLUSTER_GEN_POWER_CFG, (zclReportCmd_t* )&report);
    }
}


static void forceReportSwitchCfg(void *args) {

    struct report_t {
        u8 numAttr;
        zclReport_t attr[3];
    };

    struct report_t report;

    epInfo_t dstEpInfo;
    TL_SETSTRUCTCONTENT(dstEpInfo, 0);

    dstEpInfo.profileId = HA_PROFILE_ID;
    dstEpInfo.dstAddrMode = APS_DSTADDR_EP_NOTPRESETNT;

    report.numAttr = 0;

    zclAttrInfo_t *pAttrEntry;

    pAttrEntry = zcl_findAttribute(APP_ENDPOINT1, ZCL_CLUSTER_GEN_ON_OFF_SWITCH_CONFIG, ZCL_ATTRID_SWITCH_ACTION);

    if (pAttrEntry) {
        report.attr[report.numAttr].attrID = pAttrEntry->id;
        report.attr[report.numAttr].dataType = pAttrEntry->type;
        report.attr[report.numAttr].attrData = pAttrEntry->data;
        report.numAttr++;
    }

    pAttrEntry = zcl_findAttribute(APP_ENDPOINT1, ZCL_CLUSTER_GEN_ON_OFF_SWITCH_CONFIG, ZCL_ATTRID_SWITCH_DELAY_ON);

    if (pAttrEntry) {
        report.attr[report.numAttr].attrID = pAttrEntry->id;
        report.attr[report.numAttr].dataType = pAttrEntry->type;
        report.attr[report.numAttr].attrData = pAttrEntry->data;
        report.numAttr++;
    }

    pAttrEntry = zcl_findAttribute(APP_ENDPOINT1, ZCL_CLUSTER_GEN_ON_OFF_SWITCH_CONFIG, ZCL_ATTRID_SWITCH_DELAY_OFF);

    if (pAttrEntry) {
        report.attr[report.numAttr].attrID = pAttrEntry->id;
        report.attr[report.numAttr].dataType = pAttrEntry->type;
        report.attr[report.numAttr].attrData = pAttrEntry->data;
        report.numAttr++;
    }

    if (report.numAttr) {
        zcl_sendReportAttrsCmd(APP_ENDPOINT1, &dstEpInfo, TRUE, ZCL_FRAME_SERVER_CLIENT_DIR, ZCL_CLUSTER_GEN_ON_OFF_SWITCH_CONFIG, (zclReportCmd_t* )&report);
    }
}

int32_t forcedReportCb(void *arg) {

    if(zb_isDeviceJoinedNwk()){

        TL_SCHEDULE_TASK(forceReportBattery, NULL);
        TL_SCHEDULE_TASK(forceReportSwitchCfg, NULL);

    }

    g_appCtx.timerForcedReportEvt = NULL;

    return -1;
}

