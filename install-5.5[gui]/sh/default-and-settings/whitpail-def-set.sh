#!/bin/bash
OPTION=$(whiptail --title "Настройка ПО/ПК" --menu "
Выберите один из пунктов:
" 15 40 6 \
"1) Настроить " "dnf.conf" \
"2) Настроить " "smb.conf" \
"3) Настроить " "Касперский" \
"4) Настроить " "Агент" \
"5) Настроить " "Репозиторий" \
"На главную страницу" "" 3>&1 1>&2 2>&3)
case $OPTION in
    "1) Настроить ") ./sh/default-and-settings/whiptail-dnf.sh;;
    "2) Настроить ") ./sh/default-and-settings/whiptail-smb.sh;;
    "3) Настроить ") ./sh/default-and-settings/whiptail-kasper.sh;;
    "4) Настроить ") ./sh/default-and-settings/whiptail-agent.sh;;
    "5) Настроить ") ./sh/default-and-settings/whiptail-repo.sh;;
    "На главную страницу") ./install.sh;;
esac


#AGENT - DONE
#DNF - DONE
#KASPER - DONE
#REPO - DONE

#SMB - NONE