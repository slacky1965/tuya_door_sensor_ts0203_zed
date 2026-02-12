# <a id="Top">Tuya open/close sensor Zigbee with custom firmware</a>

<img src="doc/images/ae.jpg"/>

<!--
| Custom Model | Zigbee Model | Z2M Model | Zigbee Manufacturer | Manufacturer | Update method | Photo    |
|:------------:|:------------:|:---------:|:-------------------:|:------------:|:-------------:|:--------:|
| model_1      | TS0203       | TS0203    | Zbeacon             | Tuya         | OTA file      | :camera: |
| model_2      | TS0203       | TS0203    | _TZ3000_hufxidjp    | Tuya         | OTA file      | :camera: |
-->

| Custom Model | Zigbee Model | Z2M Model | Zigbee Manufacturer | Manufacturer | Update method | Photo    |
|:------------:|:------------:|:---------:|:-------------------:|:------------:|:-------------:|:--------:|
| model_1      | TS0203       | [TS0203](https://www.zigbee2mqtt.io/devices/TS0203.html)    | Zbeacon             | [Tuya](https://www.zigbee2mqtt.io/supported-devices/#v=Tuya)         | [OTA file](bin/1286-0202-1111114b-tuya_door_sensor_ts0203_zed_model_1.zigbee)      | [:camera:](doc/images/device_Zbeacon.jpg) |
| model_2      | TS0203       | [TS0203](https://www.zigbee2mqtt.io/devices/TS0203.html)    | _TZ3000_hufxidjp    | [Tuya](https://www.zigbee2mqtt.io/supported-devices/#v=Tuya)         | [OTA file](bin/1141-d3a3-1111114b-tuya_door_sensor_ts0203_zed_model_2.zigbee)      | [:camera:](doc/images/device_TZ3000_hufxidjp.jpg) |
| model_3      | TS0203       | [TS0203](https://www.zigbee2mqtt.io/devices/TS0203.html)    | _TZ3000_6zvw8ham _TZ3000_wkfknbzv    | [Tuya](https://www.zigbee2mqtt.io/supported-devices/#v=Tuya)         | [OTA file](bin/1141-d3a3-1111114b-tuya_door_sensor_ts0203_zed_model_3.zigbee)      | [:camera:](doc/images/device_TZ3000_6zvw8ham.jpg) [:camera:](doc/images/device_TZ3000_wkfknbzv.jpg) |

---

**Автор не несет никакой ответственности, если вы, воспользовавшись этим проектом, превратите свой умный датчик в полоумный.**

Если у вас другая сигнатура, лучше не заливать, не проверив на совпадение GPIO.

Проверялся в zigbee2mqtt.

## Зачем. 

По большому счету из-за биндинга. И вроде все хорошо, и кластеры нужные есть.

<img src="doc/images/z2m-clusters.jpg"/>

И даже биндится. Но не работает. Так же выяснилось, что эти датчики с группами тоже не дружат.

## Как обновить.

С выходом новой версии `zigbee2mqtt` обновление стало в разы легче. 

<img src="doc/images/z2m-version.jpg"/>

Нужно только переключиться в новый интерфейс - `zigbee2mqtt-windfront`.

> [!WARNING]
> Внимание!!! На момент выхода прошивки конвертор не был добавлен в репозиторий `zigbee-herdsman-converters`, поэтому в этой версии `zigbee2mqtt` [внешний конвертор](zigbee2mqtt/ts0203-z-sld.js) нужно положить в директорию `external_converters` и перегрузить `zigbee2mqtt`. В последующих версиях внешний конвертор будет не нужен.

Итак, скачиваем из репозитория нужный файл обновления (какой именно смотрите в таблице вверху). Заходим в устройство. И справа видим в `Firmware version` значок облака. Нам сюда.

<img src="doc/images/z2m-ota_device.jpg"/>

Далее выбираем `Custom firmwware` из вываливающегося списка.

<img src="doc/images/z2m-ota_custom_firmware.jpg"/>

После этого выбираем файл.

<img src="doc/images/z2m-ota_file_selection.jpg"/>

Далее нажимаем кнопку на самом датчике, т.е. будим его и жмем обновить.

<img src="doc/images/z2m-ota_update.jpg"/>

Чтобы понять, пошло обновление или нет, смотрим на изображение датчика, там должен появиться вращающийся кружок со стрелками. И в `Recent activity` будет отображаться оставшееся время в секундах и сколько загрузили в процентах.

<img src="doc/images/z2m-ota_process.jpg"/>

Ну и еще это все будет фиксироваться в логе.

<img src="doc/images/z2m-ota_log.jpg"/>

После завершения обновления датчик `TS0203 _TZ3000_hufxidjp` готов к спариванию, нужно только разрешить это в `zigbee2mqtt`. Старую версию датчика просто удаляем. 

С датчиком `TS0203 Zbeacon` все еще проще. Достаточно по новой пройти `Интервью` и `Конфигурацию`.

---

## Binding

Тут все просто. Идем в устройство, во вкладку `Bind` и добавляем нужную лампочку или выключатель (не все они умеют).

<img src="doc/images/z2m-bind.jpg"/>

<img src="doc/images/z2m-bind_result.jpg"/>

## Groups

Если у вас уже есть какая-то группа с лампочками и вы захотите управлять ими от датчика открытия, то достаточно его просто добавить в эту группу.

<img src="doc/images/z2m-group_2device.jpg"/>

---

## Возможности.

<img src="doc/images/z2m-exposes.jpg"/>

- `Contact` - информирует, открыта дверь/окно или закрыта.
- `Battery` - заряд батарейки в процентах.
- `Voltage` - напряжение батарейки.
- `Switch actions` - какую команду посылать при открытии/закрытии.
- `Delay on` - задержка включения в секундах. От 0 до 120. При значении, равном 0, задержки нет.
- `Delay off` - задержка выключения в секундах. От 0 до 120. При значении, равном 0, задержки нет.
- `Linkquality` - уровень сигнала в попугаях.

---

## Потребление

В дежурном режиме, когда ничего не происходит, средний ток потребления 13-14 мкА.

---

Связаться со мной можно в **[Telegram](https://t.me/slacky1965)**.

### Если захотите отблагодарить автора, то это можно сделать через [ЮMoney](https://yoomoney.ru/to/4100118300223495)

[Наверх](#Top)


