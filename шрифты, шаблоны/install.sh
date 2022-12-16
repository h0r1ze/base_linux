#!/bin/bash
clear 
echo -n "
1) Установить ВСЕ
2) Установка шрифтов
3) Установка шаблонов
4) Настройка прокси и протокола smb (dnf.conf / smb.conf )
5) Назад

Введите число (от 1 до 5): "
read numUser

if [[ $numUser = 1 ]] 
then
echo ""
    sh other/fonts.sh
    sh other/tamplates.sh
fi

if [[ $numUser = 2 ]] 
then
clear
echo ""
    sh other/fonts.sh
fi

if [[ $numUser = 3 ]] 
then
clear
echo ""
    sh other/tamplates.sh
fi

if [[ $numUser = 4 ]] 
then
clear
echo ""
    sh other/dnf_smb.sh
fi

