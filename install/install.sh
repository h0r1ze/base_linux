#!/bin/bash
clear
echo -n "_____________________________________________________________________________________

                         -- Автоматическая установка --
_____________________________________________________________________________________

1) Обновление системы (Цитадель)
_____________________________________________________________________________________

                            -- Прямое соединение --
2) Установка шрифтов и шаблонов | Установка СКЗИ (Vipnet+Kaspersky+NetAgent+Yandex)
3) Установка шрифтов и шаблонов | Установка СКЗИ (без настройки агента) (Vipnet+Kaspersky+NetAgent+Yandex)
_____________________________________________________________________________________

                                 -- Прокси --
4) Установка шрифтов и шаблонов | Преднастройка (dnf.conf) | Установка СКЗИ (Vipnet+Kaspersky+NetAgent+Yandex)
5) Установка шрифтов и шаблонов | Преднастройка (dnf.conf) | Установка СКЗИ (без настройки агента) (Vipnet+Kaspersky+NetAgent+Yandex)
_____________________________________________________________________________________

6) Выход из скрипта
_____________________________________________________________________________________

                             -- Ручная установка --
_____________________________________________________________________________________
7) Шрифты + шаблоны
8) Настройка dnf.conf
9) Убрать преднастройки dnf.conf
10) Все (VipNet + Kasper + NetAgent + Yandex)
11) СКЗИ (VipNet + Kasper + NetAgent)
12) СКЗИ_2 (Vipnet + Kapser + NetAgent(Без настройки))
13) Браузер (Яндекс браузер)
14) Офис (Р7 Офис)
15) Смена репозитория (Цитадель, РедОС)
_____________________________________________________________________________________
16) Выход из скрипта

Введите число(1 или 16): "


read getnum

case $getnum in
    1)
        chmod +x sh/repo_one.sh
        ./sh/repo_one.sh 
    ;;
    2)
        chmod +x sh/fonts.sh
        chmod +x sh/tamplates.sh
        chmod +x sh/browser.sh
        chmod +x sh/kaspersky.sh
        chmod +x sh/vipnet.sh
        ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/browser.sh
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y
    ;;
    3)
        chmod +x sh/fonts.sh
        chmod +x sh/tamplates.sh
        chmod +x sh/browser.sh
        chmod +x sh/kasper_without_agent.sh
        chmod +x sh/vipnet.sh
        ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/browser.sh
        ./sh/vipnet.sh
        ./sh/kasper_without_agent.sh
        dnf update -y    
    ;;
    4)
        chmod +x sh/fonts.sh
        chmod +x sh/tamplates.sh
        chmod +x sh/dnf_smb.sh
        chmod +x sh/browser.sh
        chmod +x sh/kaspersky.sh
        chmod +x sh/vipnet.sh
        ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/dnf_smb.sh
        ./sh/browser.sh
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y
    
    ;;
    5)
        chmod +x sh/fonts.sh
        chmod +x sh/tamplates.sh
        chmod +x sh/dnf_smb.sh
        chmod +x sh/browser.sh
        chmod +x sh/kasper_without_agent.sh
        chmod +x sh/vipnet.sh
        ./sh/fonts.sh
        ./sh/tamplates.sh
        ./sh/dnf_smb.sh
        ./sh/browser.sh
        ./sh/vipnet.sh
        ./sh/kasper_without_agent.sh
        dnf update -y   
    ;;
    6)
        exit   
    ;;
    7)
        chmod +x sh/fonts.sh
        chmod +x sh/tamplates.sh
        ./sh/fonts.sh
        ./sh/tamplates.sh    
    ;;
    8)
        chmod +x sh/dnf_smb.sh
        ./sh/dnf_smb.sh    
    ;;
    9)
        chmod +x sh/default_dnf_smb.sh
        ./sh/default_dnf_smb.sh   
    ;;
    10)
        chmod +x sh/browser.sh
        chmod +x sh/kaspersky.sh
        chmod +x sh/vipnet.sh
        dnf update -y
        ./sh/browser.sh
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        dnf update -y
        echo "Конец установки"
        echo    
    ;;
    11)
        chmod +x sh/vipnet.sh
        chmod +x sh/kaspersky.sh    
        dnf update -y
        ./sh/vipnet.sh
        ./sh/kaspersky.sh
        echo "Конец установки vipnet + kes + agent"
        echo   
    ;;
    12)
        chmod +x sh/vipnet.sh
        chmod +x sh/kasper_without_agent.sh    
        dnf update -y
        ./sh/vipnet.sh
        ./sh/kasper_without_agent.sh
        echo "Конец установки vipnet + kes + agent"
        echo   
    ;;
    13)
        dnf update -y
        chmod +x sh/browser.sh
        ./sh/browser.sh
        dnf update -y
        echo "Установка Yandex browser завершена" 
        echo   
    ;;
    14)
        chmod +x sh/office.sh
        dnf update -y
        ./sh/office.sh
        dnf update -y
        echo "Установка Office"
        echo  
    ;;
    15)
        chmod +x sh/repo.sh
        ./sh/repo.sh
        echo "Установка Office"
        echo   
    ;;
    16)
        exit   
    ;;
    *)
    echo "Скрипт прерван по неизвестной ошибке"
esac
./install.sh