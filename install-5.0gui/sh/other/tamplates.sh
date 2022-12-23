#!/bin/bash
echo
echo -n -e "         -- Установка шаблонов --

Для инсталяции необходимо ввести пользователя
\e[4mВведите следующее имя пользователя\e[24m: \e[1m\e[31m"
grep -E '1000' /etc/passwd | awk -F: '{print $1}'
echo
echo -n -e "\033[0mВнимательно прочитайте и введи данные: "
read userName
sudo -u $userName cp dist/шаблоны/* /home/$userName/Шаблоны
echo "Шаблоны успешно установлены"
