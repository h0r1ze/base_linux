#!/bin/bash
OPTION=$(whiptail --title "Настройка Агента" \
--menu "Выберите один из пунктов для обновления системы:
" 10 60 2 \
"[Проверить свзяь с сервером]" "" \
"[Запустить скрипт по смене сервера Агента]" "" \
"На главную страницу" "" 3>&1 1>&2 2>&3)
case $OPTION in
    "[Проверить свзяь с сервером]") /opt/kaspersky/klnagent64/bin/klnagchk;;
    "[Запустить скрипт по смене сервера Агента]") /opt/kaspersky/klnagent64/lib/bin/setup/klnagent_setup.pl;;
    "На главную страницу") ./install.sh;;
esac