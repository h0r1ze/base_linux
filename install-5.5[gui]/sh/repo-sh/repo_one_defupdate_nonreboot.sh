#!/bin/bash
clear
dnf update -y
echo -n "
Перезагрузить ПК?(Y/N): "
read askReboot
if [ $askReboot = "Y" ] || [ $askReboot = "y" ]
then
    reboot
else 
    ./install.sh
fi