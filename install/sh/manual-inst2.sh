#!/bin/bash
clear
echo -e -n "
__________________________________________

            Ручная инсталляция
__________________________________________

                  ПО           
__________________________________________

1) Яндекс браузер
2) Р7 офис
3) Ассистент
4) Гном диск
5) Google браузер
6) Ассистент
7) HP менеджер + HP plugin
__________________________________________

8) Проверить dnf.conf
9) Настроить dnf.conf
10) Очистить прокси в dnf.conf

\e[1m\e[31mПрежде чем устанавливать убедитесь что
у вас соединение идет через прокси и
настроен dnf.conf\033[0m
__________________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/browser.sh;;
    2) ./sh/office.sh;;
    3) ./sh/assistant.sh;;
    4) dnf install -y gnome-disk-utility;;
    5) ./sh/google-chrome.sh ;;
    6) ./sh/assistan.sh;;
    7) ./sh/hp.sh;;
    8) clear
       echo
       echo
       echo
       echo "        -- dnf.conf --"
       echo "_______________________________"
       tail -n 3 /etc/dnf/dnf.conf | grep proxy
       echo "_______________________________"
       echo
       echo "Если прокси не настроен значений последний 3 строк не будет выведено!"
       echo "________________________________________________"
       echo
       echo -n "Введите любое значение чтобы попасть назад: "
       read sabre
       if [ $sabre = y ] || [ $sabre = Y ]
       then
        ./sh/manual-inst2.sh
       else
        ./sh/manual-inst2.sh
       fi;;
    9) ./sh/dnf.sh;;
    10) ./sh/default_dnf.sh;;
    0) ./sh/manual-inst.sh;;
esac