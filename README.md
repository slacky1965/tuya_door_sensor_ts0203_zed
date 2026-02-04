# <a id="Top">Tuya open/close sensor Zigbee with custom firmware</a>

<img src="doc/images/ae.jpg"/>

- TS0203 Zbeacon
- TS0203 _TZ3000_hufxidjp 

**Автор не несет никакой ответственности, если вы, воспользовавшись этим проектом, превратите свой умный датчик в полоумный.**

Если у вас другая сигнатура, лучше не заливать, не проверив на совпадение сенсора и GPIO.

Проверялся в zigbee2mqtt.

## Зачем. 

По большому счету из-за биндинга. И вроде все хорошо, и кластеры нужные есть.

<img src="doc/images/z2m-clusters.jpg"/>

И даже биндится. Но не работает. Так же выяснилось, что эти датчики с группами тоже не дружат.

## Как обновить.

С выходом новой версии `zigbee2mqtt` обновление стало в разы легче. 

<img src="doc/images/z2m-version.jpg"/>

Нужно только переключиться в новый интерфейс - `zigbee2mqtt-windfront`.

Итак, скачиваем из репозитория нужный файл обновления (какой именно чуть ниже). Заходим в устройство. И справа видим в `Firmware version` значок облако <img src="doc/images/z2m-cloud.jpg"/>. Нам сюда.

<img src="doc/images/z2m-ota_device.jpg"/>

Далее выбираем `Custom firmwware` из вываливающегося списка.

<img src="doc/images/z2m-ota_custom_firmware.jpg"/>

После этого выбираем файл.

<img src="doc/images/z2m-ota_file_selection.jpg"/>

---

Для `TS0203 Zbeacon`

<img src="doc/images/device_Zbeacon.jpg"/>

выбираем файл [1286-0202-1111114b-tuya_door_sensor_0x20_zed.zigbee](bin/1286-0202-1111114b-tuya_door_sensor_0x20_zed.zigbee).

---

Для `TS0203 _TZ3000_hufxidjp`

<img src="doc/images/device_TZ3000_hufxidjp.jpg"/>

выбираем файл [1141-d3a3-1111114b-tuya_door_sensor_0x26_zed.zigbee](bin/1141-d3a3-1111114b-tuya_door_sensor_0x26_zed.zigbee).

---

Далее нажимаем кнопку на самом датчике, т.е. будим его и жмем обновить.

<img src="doc/images/z2m-ota_update.jpg"/>

Чтобы понять, пошло обновление или нет, смотрим на изображение датчика, там должен появиться вращающийся кружок со стрелками. И в `Recent activity` будет отображаться оставшееся время в секундах и сколько загрузили в процентах.

<img src="doc/images/z2m-ota_process.jpg"/>

Ну и еще это все будет фиксироваться в логе.

<img src="doc/images/z2m-ota_log.jpg"/>


[Наверх](#Top)


