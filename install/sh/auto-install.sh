#!/bin/bash
clear
echo -e -n "
______________________________________

                 ПАК ПО
______________________________________
       В инсталяцию пака входит:
          Шаблоны, Шрифты
   Касперский, Випнет, Агент, Яндекс,
     Р7 Офис, Ассистент, Гном Диск
______________________________________

1) ПАК полная установка
2) ПАК без Р7 офиса
3) ПАК без Р7 офиса и настройки Агента
4) Пак защиты Касперский Випнет Агент
5) Пак защиты Касперский Випнет без
настройки агента.
______________________________________

6) Проверить dnf.conf
7) Настроить dnf.conf
8) Очистить прокси в dnf.conf

\e[1m\e[31mПрежде чем устанавливать убедитесь что
у вас соединение идет через прокси и
настроен dnf.conf\033[0m
______________________________________

0) Вернуться назад

Введите одно допустимое значение: "
read getnum
case $getnum in
    1)  ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/assistan.sh
        ./sh/browser.sh
        ./sh/office.sh
        dnf install -y gnome-disk-utility
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y;;
    2)  ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/assistan.sh
        ./sh/browser.sh
        dnf install -y gnome-disk-utility
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y;;
    3) ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/assistan.sh
        ./sh/browser.sh
        dnf install -y gnome-disk-utility
        ./sh/vipnet.sh
        ./sh/kasper_without_agent.sh
        dnf update -y;;
    4)  ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y;;
    5)  ./sh/vipnet.sh
        ./sh/kasper_without_agent.sh
        dnf update -y;;
    6) 
       clear
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
        ./sh/auto-install.sh
       else
        ./sh/auto-install.sh
       fi;;
    7) ./sh/dnf.sh;;
    8) ./sh/default_dnf.sh;;
    0) ./install.sh;;
esac
./sh/auto-install.sh