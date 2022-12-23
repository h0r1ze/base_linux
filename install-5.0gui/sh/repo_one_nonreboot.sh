#!/bin/bash
clear
rm /etc/yum.repos.d/*
cp repo/local.repo /etc/yum.repos.d/
dnf update -y
rm /etc/yum.repos.d/*
cp repo/RedOS-Base.repo /etc/yum.repos.d/ 
cp repo/RedOS-Updates.repo /etc/yum.repos.d/ 
clear
echo -n "
Перезагрузить ПК?(да/нет): "
read askReboot
if [ $askReboot = "да" ]
then
    reboot
else 
    ./install.sh
fi