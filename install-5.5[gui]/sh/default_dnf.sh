#!/bin/bash
clear
echo "[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=True
skip_if_unavailable=False" > /etc/dnf/dnf.conf
echo "
dnf.conf успешно изменен"
#cp dist/proxy/smb.conf /etc/samba/
#echo "smb.conf успешно изменен

#Скрипт успешно завершил работу"
