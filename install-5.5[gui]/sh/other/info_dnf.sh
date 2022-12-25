#!/bin/bash
clear
echo
echo
echo
echo "        -- dnf.conf --"
echo "_______________________________"
tail -n 3 /etc/dnf/dnf.conf | grep proxy
echo "_______________________________"
echo
echo "Если прокси не настроен значений последний 3 строк не будет выведено!"
echo "________________________________________________"
echo
echo -n "Введите любое значение чтобы попасть назад: "
read sabre
if [ $sabre = "y" ] || [ $sabre = "Y" ]
    then
        ./sh/default-and-settings/whiptail-dnf-smb.sh
    else
        ./sh/default-and-settings/whiptail-dnf-smb.sh
fi