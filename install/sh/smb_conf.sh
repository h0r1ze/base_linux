#!/bin/bash
clear
echo -n "
__________________________________________________________________

            Сейчас вы перейдете в папку  smb.conf!
            Данные протоколов успешно скопированы!

__________________________________________________________________

Вставьте в поле скопированные данные как в примере нажав ctrl+shift+v

Пример того куда нужно вставлять данные из буфера обмена: 

        [global]
        workgroup = WORKGROUP
Сюда ->    
        security = user
        passdb backend = tdbsam
        printing = cups
        printcap name = cups
        load printers = yes

__________________________________________________________________

Вы уверены что все прочитали и хотите продолжить? (да / нет): "
echo 'client min protocol = NT1 
client max protocol = SMB3'| xsel -b -i

read questUser
if [ $questUser = "да" ] || [ $questUser = "Да" ] || [ $questUser = "дА" ]; then
    nano /etc/samba/smb.conf
    systemctl start smb
    clear
    echo "Скрипт завершен успешно, изменения вступили в силу. 

Самба запущена по новой!"
else
    clear
    echo
    echo "Скрипт завершен -- БЕЗ ИЗМЕНЕНИЯ smb.conf --"
    echo
fi

