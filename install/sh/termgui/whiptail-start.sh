#!/bin/bash
chmod +x *
function whiptailChooseOne {
 ./sh/kaspersky.sh
}
function whiptailChooseTwo {
 ./agent.sh
}
function whiptailChooseThree {
 ./vipnet.sh
}
function whiptailChooseFour {
 ./crypto-pro-5-0.sh
}
function whiptailChooseFive {
 ./sh/office.sh
}
function whiptailChooseSix {
 ./assistan.sh
}
function whiptailChooseSeven {
 ./yandex-browser.sh
}
function whiptailChooseEight {
 ./google-chrome.sh
}
function whiptailChooseNine {
 ./gnom-disk.sh
}

whiptail --title "Установка дистрибутивов" --checklist --separate-output "
Выберите один или несколько пунктов для установки на ПК.

Выбор осуществляется нажатием на пробел:
" 22 32 10 \
"Касперский" "" off \
"Агент" "" off \
"Випнет" "" off \
"CSP CryptoPro 5.0" "" off \
"Р7 Офис" "" off \
"Ассистент" ""
"Яндекс браузер" "" off \
"Google Chrome" "" off \
"Гном Диск" "" off 2>3

while read choice
do
    case $choice in
        "Касперский") whiptailChooseOne;;
        "Агент") whiptailChooseTwo;;
        "Випнет") whiptailChooseThree;;
        "CSP CryptoPro 5.0") whiptailChooseFour;;
        "Р7 Офис") whiptailChooseFive;;
        "Ассистент") whiptailChooseSix;;
        "Яндекс браузер") whiptailChooseSeven;;
        "Google Chrome") whiptailChooseEight;;
        "Гном Диск") whiptailChooseNine;;
    esac
done < 3
rm 3