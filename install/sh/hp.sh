#!/bin/bash
clear
dnf install hplip-gui python3-distro -y
echo
echo -n -e "         -- Установка HP менеджера + HP plugin --

Файл hplip-3.21.2-plugin.run находится в папке dist

Для инсталяции необходимо ввести пользователя
\e[4mВведите следующее имя пользователя\e[24m: \e[1m\e[31m"
grep -E '1000' /etc/passwd | awk -F: '{print $1}'
echo
echo -n -e "\033[0mВнимательно прочитайте и введи данные: "
read userName
sudo -u $userName /usr/bin/hp-plugin
echo "HP менеджер и Hp plugin успешно установлены"