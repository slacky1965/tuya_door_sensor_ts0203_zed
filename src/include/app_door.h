#ifndef SRC_INCLUDE_APP_DOOR_H_
#define SRC_INCLUDE_APP_DOOR_H_

#define DOOR_DEBOUNCE_MS    100 // 100 ms

extern bool repeat_onoff_cmd;

void door_handler();
bool door_idle();

#endif /* SRC_INCLUDE_APP_DOOR_H_ */
