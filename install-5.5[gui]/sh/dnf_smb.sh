#!/bin/bash
clear
echo -n "
Настройка dnf.conf

Введите логин прокси: "
read userNameProxy
echo -n "Введите пароль прокси: "
read userPasswordProxy

echo "[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=True
skip_if_unavailable=False
proxy=http://10.82.107.100:3128
proxy_username=$userNameProxy
proxy_password=$userPasswordProxy" > /etc/dnf/dnf.conf
echo "
dnf.conf успешно изменен"
#cp dist/proxy/smb.conf /etc/samba/
#echo "smb.conf успешно изменен

#Скрипт успешно завершил работу"
