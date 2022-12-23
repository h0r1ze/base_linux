#!/bin/bash
chmod +x sh/*
chmod +x sh/other/*
chmod +x sh/print/*
chmod +x sh/prog/*
chmod +x sh/termgui/*
./sh/other/time_disable.sh
clear
OPTION=$(whiptail --title "install-v5.0 [GUI]" --menu "Обновление системы
Настройка LARM под проксю
Установка ПО" 15 60 4 \
"1" "Обновление системы" \
"2" "Настройка dnf, smb, смена репозитория" \
"3" "Установка ПО" 3>&1 1>&2 2>&3)
case $OPTION in
    "1") ./sh/update-install.sh;;
    "2") ./sh/whitpail.sh;;
    "3") ./sh/termgui/install-sh/whitpail-installer.sh;;
esac