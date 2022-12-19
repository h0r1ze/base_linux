#!/bin/bash
clear
echo -n "
_____________________________________

            Обновление
_____________________________________

1) Обновление (Цитадель без перезагрузки)
2) Обновление (Цитадель + reboot)
3) Обновление (С настройкой dnf.conf без перезагрузки)
4) Обновление (dnf.conf + reboot)
_____________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/time_disable.sh
       ./sh/repo_one.sh;;
    2) ./sh/time_disable.sh
       ./sh/repo_one_nonreboot.sh;;
    3) ./sh/time_disable.sh
       ./sh/repo_one_defupdate.sh;;
    4) ./sh/time_disable.sh 
       ./sh/repo_one_defupdate_nonreboot.sh;;
    0) ./install.sh;;
esac

#ГОТОВО!