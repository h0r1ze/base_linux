#!/bin/bash
chmod +x *
chmod +x sh/*
chmod +x sh/default-and-settings/*
chmod +x sh/other/*
chmod +x sh/print/*
chmod +x sh/prog/*
chmod +x sh/termgui/*
./sh/other/time_disable.sh
clear
./info.sh
OPTION=$(whiptail --title "install-v5.5 [GUI]" --menu "Обновление системы
Настройка LARM под проксю
Установка ПО" 15 75 4 \
"1" "Обновление системы" \
"2" "Настройка ПО/ПК (dnf, smb, kasperksy, agent, смена репозитория)" \
"3" "Установка ПО" \
"4" "[В разработке] Установка ПО для принтеров" 3>&1 1>&2 2>&3)
case $OPTION in
    "1") ./sh/termgui/update-sh/whiptail-updater.sh;;
    "2") ./sh/default-and-settings/whitpail-def-set.sh;;
    "3") ./sh/termgui/install-sh/whitpail-installer.sh ;;
    "4") exit;;
esac