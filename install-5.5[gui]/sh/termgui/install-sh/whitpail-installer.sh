#!/bin/bash

OPTION=$(whiptail --title "Установка ПО" --menu "
В следующем окне будут выбраны следующие ПО:
Касперский; Агент; Випнет; КриптоПРО CSP 5.0; Р7 Офис; Ассистент; Яндекс браузер; Гном диск

" 15 65 4 \
"[Выбрать]" "самостоятельный выбор установки" \
"[Все]" "все ПО выбраны автоматически" \
"[СКЗИ]" "выбраны только средства защиты информации" \
"На главную страницу" "" 3>&1 1>&2 2>&3)
case $OPTION in
    "[Выбрать]") ./sh/termgui/install-sh/whiptail-installer-po.sh;;
    "[Все]") ./sh/termgui/install-sh/whiptail-installer-po-all.sh;;
    "[СКЗИ]") ./sh/termgui/install-sh/whiptail-installer-po-skzi.sh;;
    "На главную страницу") ./install.sh;;
esac