#!/bin/bash
clear
echo -e -n "
__________________________________________

            Ручная инсталляция
__________________________________________

                  ПО           
__________________________________________

1) Яндекс браузер
2) Р7 офис
3) Ассистент
4) Гном диск
__________________________________________

5) Проверить dnf.conf
6) Настроить dnf.conf
7) Очистить прокси в dnf.conf

\e[1m\e[31mПрежде чем устанавливать убедитесь что
у вас соединение идет через прокси и
настроен dnf.conf\033[0m
__________________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/update-install.sh;;
    2) ./sh/auto-install.sh;;
    3) ./sh/manula-inst.sh;;
    4) ./sh/settings-larm.sh;;
    0) ./sh/manual-inst.sh;;
esac