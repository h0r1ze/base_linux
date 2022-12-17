#!/bin/bash
echo -n "         -- Установка шаблонов --
Для инсталяции необходимо ввести пользователя
Введите следующее имя пользователя: "
grep -E '1000' /etc/passwd | awk -F: '{print $1}'
echo -n "Ввод: "
read userName
sudo -u $userName cp dist/шаблоны/* /home/$userName/Шаблоны
echo "Шаблоны успешно установлены"
