#!/bin/bash
# ls -d 
function whiptailChooseOne {
   ./sh/prog/kaspersky.sh
}
function whiptailChooseOneNon {
   ./sh/prog/kasper_without_agent.sh
}
function whiptailChooseTwo {
   ./sh/prog/agent.sh
}
function whiptailChooseTwoNon {
   ./sh/prog/agent-just-install.sh
}
function whiptailChooseThree {
   ./sh/prog/vipnet.sh
}
function whiptailChooseThreeNon {
   ./sh/prog/vipnet-just-install.sh
}
function whiptailChooseFour {
   ./sh/prog/cryptopro5-0.sh
}
function whiptailChooseFive {
   ./sh/office.sh
}
function whiptailChooseSix {
   ./sh/prog/assistan.sh
}
function whiptailChooseSeven {
   ./sh/prog/yandex-browser.sh
}
function whiptailChooseEight {
   ./sh/prog/google-chrome.sh
}
function whiptailChooseNine {
   ./sh/prog/gnom-disk.sh
}

whiptail --title "Установка ПО" --checklist --separate-output "
Выберите один или несколько пунктов для установки на ПК.
Для перехода к нижним кнопкам используется Tab
Выбор осуществляется нажатием на пробел:
" 22 50 10 \
"Касперский" "" on \
"Касперский 2" "[Без автонастройки]" off \
"Випнет" "" on \
"Випнет 2" "[Без настройки прокси]" off \
"CryptoPro 5.0" "" on \
"Агент" "" on \
"Агент 2" "[Без настройки]" off \
"Р7 Офис" "" off \
"Ассистент" "" off \
"Яндекс браузер" "" off \
"Google Chrome" "" off \
"Гном Диск" "" off 2>3

while read chooseUser
do
    case $chooseUser in
        "Касперский") whiptailChooseOne;;
        "Касперский 2") whiptailChooseOneNon;;
        "Агент") whiptailChooseTwo;;
        "Агент 2") whiptailChooseTwoNon;;
        "Випнет") whiptailChooseThree;;
        "Випнет 2") whiptailChooseThreeNon;;
        "CryptoPro 5.0") whiptailChooseFour;;
        "Р7 Офис") whiptailChooseFive;;
        "Ассистент") whiptailChooseSix;;
        "Яндекс браузер") whiptailChooseSeven;;
        "Google Chrome") whiptailChooseEight;;
        "Гном Диск") whiptailChooseNine;;
esac
done < 3