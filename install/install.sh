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

if [ $getnum = 1 ]
then
    chmod +x sh/repo_one.sh
   ./sh/repo_one.sh 
fi

if [ $getnum = 2 ]
then
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
fi

if [ $getnum = 3 ]
then
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
fi

if [ $getnum = 4 ]
then
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
fi

if [ $getnum = 5 ]
then
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
fi

if [ $getnum = 6 ]
then
    echo "
    "
    exit
fi

if [ $getnum = 7 ]
then
    chmod +x sh/fonts.sh
    chmod +x sh/tamplates.sh
    ./sh/fonts.sh
    ./sh/tamplates.sh
fi

if [ $getnum = 8 ]
then 
    chmod +x sh/dnf_smb.sh
    ./sh/dnf_smb.sh
fi

if [ $getnum = 9 ]
then
    chmod +x sh/default_dnf_smb.sh
    ./sh/default_dnf_smb.sh
fi

if [ $getnum = 10 ] 
then
    chmod +x sh/browser.sh
    chmod +x sh/kaspersky.sh
    chmod +x sh/vipnet.sh
    dnf update -y
    #Установка бразура
    ./sh/browser.sh
    #Установка vipnet
    ./sh/vipnet.sh
    #Установка касперского
    ./sh/kaspersky.sh
    dnf update -y
    echo "Конец установки
    "
fi 
 
if [ $getnum = 11 ] 
then
    chmod +x sh/vipnet.sh
    chmod +x sh/kaspersky.sh    
    dnf update -y
    #Установка vipnet
    ./sh/vipnet.sh
    #Установка касперского
    ./sh/kaspersky.sh
    echo "Конец установки vipnet + kes + agent
    " 
fi

if [ $getnum = 12 ] 
then
    chmod +x sh/vipnet.sh
    chmod +x sh/kasper_without_agent.sh    
    dnf update -y
    #Установка vipnet
    ./sh/vipnet.sh
    #Установка касперского
    ./sh/kasper_without_agent.sh
    echo "Конец установки vipnet + kes + agent
    "     echo "
    "
fi

if [ $getnum = 13 ] 
then
    dnf update -y
    chmod +x sh/browser.sh
    #Установка бразура
    ./sh/browser.sh
    dnf update -y
    echo "Установка Yandex browser завершена
    " 
fi

if [ $getnum = 14 ]
then
    chmod +x sh/office.sh
    #Установка офиса
    dnf update -y
    ./sh/office.sh
    dnf update -y
    echo "Установка Office
    "

fi

if [ $getnum = 15 ]
then
    chmod +x sh/repo.sh
    ./sh/repo.sh
    echo "Установка Office
    "
fi

if [ $getnum = 16 ]
then
    echo "
    "
    exit
fi
./install.sh