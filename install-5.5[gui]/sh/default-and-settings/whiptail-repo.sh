#!/bin/bash
OPTION=$(whiptail --title "Настройка Репозитория" --menu "
Выберите один из пунктов для обновления системы:" 14 80 4 \
"1) Сменить репозиторий на Цитадель" "" \
"2) Сменить репозиторий на РедОС" "" \
"3) Запустить обновление системы " "dnf update" \
"На главную страницу" "" 3>&1 1>&2 2>&3)
case $OPTION in
    "1) Сменить репозиторий на ")
        rm /etc/yum.repos.d/*
        cp repo/local.repo /etc/yum.repos.d/
        echo "...
        Скрипт по замене репозитория на Цитадель выполнен.";;
    "2) Сменить репозиторий на ")     
        rm /etc/yum.repos.d/*
        cp repo/RedOS-Base.repo /etc/yum.repos.d/ 
        cp repo/RedOS-Updates.repo /etc/yum.repos.d/ 
        echo "...
        Скрипт по замене репозитория на РедОС выполнен.";;
    "3) Запустить обновление системы ")     dnf update -y;;
    "На главную страницу") ./install.sh;;
esac