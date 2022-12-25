#!/bin/bash
OPTION=$(whiptail --title "Настройка dnf.conf" --menu "
Выберите один из пунктов для обновления системы:" 14 80 4 \
"[Проверить dnf.conf]" "" \
"[Редактировать dnf.conf]" "" \
"[Вернуть dnf.conf в исходное состояние]" "" \
"На главную страницу" "" 3>&1 1>&2 2>&3)
case $OPTION in
    "[Проверить dnf.conf]") ./sh/other/info_dnf.sh;;
    "[Редактировать dnf.conf]") ./sh/other/dnf.sh;;
    "[Вернуть dnf.conf в исходное состояние]") ./sh/other/default_dnf.sh;;
    "На главную страницу") ./install.sh;;
esac