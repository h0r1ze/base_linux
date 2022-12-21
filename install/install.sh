#!/bin/bash
chmod +x sh/*
chmod +x sh/termgui/*
./sh/time_disable.sh
clear
echo -n "
__________________________________________

            Обновление системы
               Установка ПО
         Настройка LARM под Прокси
__________________________________________    

1) Обновление
2) Паки установки ПО
3) Выборочная установка (Защита + ПО) 
4) Настройка (dnf, smb, смена репозитория)
__________________________________________

0) Завершить скрипт

Введите одно допустимое значение: "
read getnum
case $getnum in
    1) ./sh/update-install.sh;;
    2) ./sh/auto-install.sh;;
    3) ./sh/manual-inst.sh;;
    4) ./sh/settings-larm.sh;;
    5) ./sh/termgui/whiptail-start.sh;;
    0) exit;;
esac

# case $getnum in
#     1)
#         chmod +x sh/*
#         ./sh/repo_one.sh 
#     ;;
#     2)
#         chmod +x sh/*
#         ./sh/fonts.sh
#         ./sh/tamplates.sh
#         ./sh/browser.sh
#         ./sh/vipnet.sh
#         ./sh/kaspersky.sh
#         dnf update -y
#     ;;
#     3)
#         chmod +x sh/*
#         ./sh/fonts.sh
#         ./sh/tamplates.sh
#         ./sh/browser.sh
#         ./sh/vipnet.sh
#         ./sh/kasper_without_agent.sh
#         dnf update -y    
#     ;;
#     4)
#         chmod +x sh/*
#         ./sh/fonts.sh
#         ./sh/tamplates.sh
#         ./sh/dnf_smb.sh
#         ./sh/browser.sh
#         ./sh/vipnet.sh
#         ./sh/kaspersky.sh
#         dnf update -y
    
#     ;;
#     5)
#         chmod +x sh/*
#         ./sh/fonts.sh
#         ./sh/tamplates.sh
#         ./sh/dnf_smb.sh
#         ./sh/browser.sh
#         ./sh/vipnet.sh
#         ./sh/kasper_without_agent.sh
#         dnf update -y   
#     ;;
#     6)
#         exit   
#     ;;
#     7)
#         chmod +x sh/*
#         ./sh/fonts.sh
#         ./sh/tamplates.sh    
#     ;;
#     8)
#         chmod +x sh/*
#         ./sh/dnf_smb.sh    
#     ;;
#     9)
#         chmod +x sh/*
#         ./sh/default_dnf_smb.sh   
#     ;;
#     10)
#         chmod +x sh/*
#         dnf update -y
#         ./sh/browser.sh
#         ./sh/vipnet.sh
#         ./sh/kaspersky.sh
#         dnf update -y
#         echo "Конец установки"
#         echo    
#     ;;
#     11)
#         chmod +x sh/*   
#         dnf update -y
#         ./sh/vipnet.sh
#         ./sh/kaspersky.sh
#         echo "Конец установки vipnet + kes + agent"
#         echo   
#     ;;
#     12)
#         chmod +x sh/*
#         dnf update -y
#         ./sh/vipnet.sh
#         ./sh/kasper_without_agent.sh
#         echo "Конец установки vipnet + kes + agent"
#         echo   
#     ;;
#     13)
#         dnf update -y
#         chmod +x sh/*
#         ./sh/browser.sh
#         dnf update -y
#         echo "Установка Yandex browser завершена" 
#         echo   
#     ;;
#     14)
#         chmod +x sh/*
#         dnf update -y
#         ./sh/office.sh
#         dnf update -y
#         echo "Установка Office"
#         echo  
#     ;;
#     15)
#         chmod +x sh/*
#         ./sh/repo.sh
#         echo "Установка Office"
#         echo   
#     ;;
#     16)
#         exit   
#     ;;
#     *)
#     echo "Скрипт прерван по неизвестной ошибке"
# esac
