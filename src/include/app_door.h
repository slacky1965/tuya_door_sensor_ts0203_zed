#ifndef SRC_INCLUDE_APP_DOOR_H_
#define SRC_INCLUDE_APP_DOOR_H_

#define DOOR_DEBOUNCE_MS    100 // 100 ms

void door_handler();
bool door_idle();

#endif /* SRC_INCLUDE_APP_DOOR_H_ */
