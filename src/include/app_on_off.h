#ifndef SRC_INCLUDE_APP_ON_OFF_H_
#define SRC_INCLUDE_APP_ON_OFF_H_

void cmdOnOff(uint8_t command);
int32_t app_repeatCmdOnOff(void *args);
void app_deferredCmdOnOff();

#endif /* SRC_INCLUDE_APP_ON_OFF_H_ */
