#!/bin/bash
clear
echo -n "
_____________________________________

            Обновление
_____________________________________

1) Обновление (Цитадель)
2) Обновление (Цитадель + reboot)
3) Обновление (С настройкой dnf.conf)
4) Обновление (dnf.conf + reboot)
_____________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/repo_one.sh;;
    2) ./sh/repo_one_nonreboot;;
    3) ./sh/repo_one_defupdate.sh;;
    4) ./sh/repo_one_defupdate_nonreboot.sh;;
    0) ./install.sh;;
esac

#ГОТОВО!