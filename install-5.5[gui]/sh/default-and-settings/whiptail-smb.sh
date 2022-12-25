#!/bin/bash
clear
echo -n -e "
_____________________________________________________________________

               Сейчас вы перейдете в папку  smb.conf!
               \e[31m\e[1mДанные протоколов успешно скопированы!\e[0m

_____________________________________________________________________

Вставьте в поле скопированные данные как в примере нажав \e[31m\e[1mctrl+shift+v\e[0m

Пример того куда нужно вставлять данные из буфера обмена: 

        [global]
        workgroup = WORKGROUP
\e[31m\e[1mСюда ->\e[0m    
        security = user
        passdb backend = tdbsam
        printing = cups
        printcap name = cups
        load printers = yes

_____________________________________________________________________

\e[31m\e[1mВы уверены что все прочитали и хотите продолжить? (Y/N):\e[0m "
echo 'client min protocol = NT1 
client max protocol = SMB3'| xsel -b -i

read questUser
if [ $questUser = "Y" ] || [ $questUser = "y" ]; then
    nano /etc/samba/smb.conf
    systemctl start smb
    clear
    echo "Скрипт завершен успешно, изменения вступили в силу. 

Самба запущена по новой!"
else
    clear
    echo
    echo -e "\e[31m\e[1mСкрипт завершен БЕЗ ИЗМЕНЕНИЙ!\e[0m"
    echo
fi