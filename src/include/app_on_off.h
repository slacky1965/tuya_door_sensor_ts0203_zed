#ifndef SRC_INCLUDE_APP_ON_OFF_H_
#define SRC_INCLUDE_APP_ON_OFF_H_

#define DEV_ONOFF_CMD_NUM   (APS_GROUP_TABLE_NUM+APS_BINDING_TABLE_NUM)

typedef struct {
    uint8_t  used :1;
    uint8_t  cmd_send :1;
    uint8_t  status_rsp :1;
    uint8_t  group :1;
    uint8_t  command :2;
    uint8_t  cnt :2;
    uint8_t  seq_num;
    uint16_t group_addr;
} dev_onoff_cmd_t;

enum {
    ONOFF_CMD_SINGLE = 0,
    ONOFF_CMD_CHECK_ANSWER,
    ONOFF_CMD_REPEAT
};

void cmdOnOff(uint8_t command, uint8_t app_mode);
void dev_onoff_cmd_init();
dev_onoff_cmd_t *get_dev_onoff_cmd_free();
dev_onoff_cmd_t *find_rsp_dev_onoff_cmd(uint8_t seq_num);
void set_send_dev_onoff_cmd(uint8_t seq_num);

#endif /* SRC_INCLUDE_APP_ON_OFF_H_ */
