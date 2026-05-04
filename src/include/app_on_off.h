#ifndef SRC_INCLUDE_APP_ON_OFF_H_
#define SRC_INCLUDE_APP_ON_OFF_H_

void cmdOnOff(uint8_t command);
int32_t app_repeatCmdOnOff(void *args);
void app_deferredCmdOnOff();
void app_deferredCmdPollRate(uint32_t poll_rate);

#endif /* SRC_INCLUDE_APP_ON_OFF_H_ */
