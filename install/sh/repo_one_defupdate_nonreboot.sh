#!/bin/bash
clear
./sh/dnf.sh
dnf update -y
echo -n "
Перезагрузить ПК?(да/нет): "
read askReboot
if [ $askReboot = "да" ]
then
    reboot
else 
    ./install.sh
fi