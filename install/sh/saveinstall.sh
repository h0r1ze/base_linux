#!/bin/bash
clear
#cp distr/шрифты/* /usr/share/fonts/
echo -n "     -- Безопасная установка ПО --
Для инсталяции необходимо ввести пользователя
Имя вашего пользователя: "
grep -E '1000' /etc/passwd | awk -F: '{print $1}'
echo -n "
Ввод: "
read userName
gpasswd -a $userName wheel >& /dev/null
echo -n "
Для исталяции скопируйте полностью название файла с расширением и начните установку
Пример правильной установки: sudo dnf install -y google.rpm

Ввод: "
read dnfInstall
echo "
"
$dnfInstall
gpasswd -d $userName wheel >& /dev/null
