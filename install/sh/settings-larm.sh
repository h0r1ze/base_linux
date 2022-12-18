#!/bin/bash
clear
echo -n "
_____________________________________

            Настройка LARM
_____________________________________

1) Настроить dnf и smb
2) Настроить dnf.conf
3) Настроить smb.conf
4) Смена репозитория
_____________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/dnf.sh
       ./sh/smb_conf.sh;;
    2) ./sh/dnf.sh;;
    3) ./sh/smb_conf.sh;;
    4) ./sh/repo.sh;;
    0) ./install.sh;;
esac