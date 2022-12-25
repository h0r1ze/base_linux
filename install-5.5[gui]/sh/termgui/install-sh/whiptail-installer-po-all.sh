#!/bin/bash
function whiptailChooseKapsersky {
   ./sh/prog/kaspersky.sh
}
function whiptailChooseKasperskyJustInstall {
   ./sh/prog/kasper_just_install.sh
}
function whiptailChooseAgent {
   ./sh/prog/agent.sh
}
function whiptailChooseAgentJustInstall {
   ./sh/prog/agent-just-install.sh
}
function whiptailChooseVipnet {
   ./sh/prog/vipnet.sh
}
function whiptailChooseVipnetJustInstall {
   ./sh/prog/vipnet-just-install.sh
}
function whiptailChooseCryptopro {
   ./sh/prog/cryptopro5-0.sh
}
function whiptailChooseOffice {
   ./sh/office.sh
}
function whiptailChooseAssistant {
   ./sh/prog/assistant.sh
}
function whiptailChooseYandexBrowser {
   ./sh/prog/yandex-browser.sh
}
function whiptailChooseGoogleChrome {
   ./sh/prog/google-chrome.sh
}
function whiptailChooseGnomDisk {
   ./sh/prog/gnom-disk.sh
}

whiptail --title "Установка ПО, СКЗИ, СЗИ" --checklist --separate-output "
Выберите один или несколько пунктов для установки на ПК.
Для перехода к нижним кнопкам используется Tab
Выбор осуществляется нажатием на пробел:
" 25 70 12 \
"Р7 Офис" "" on \
"Ассистент" "" off \
"Яндекс браузер" "" on \
"Google Chrome" "" off \
"Гном Диск" "" on \
"Випнет" "" on \
"Випнет 2" "[Простая установка без настроек]" off \
"CryptoPro 5.0" "[РАБОТАЕТ ТОЛЬКО С ЯНДЕКС БРАУЗЕРОМ] " on \
"Касперский" "" on \
"Касперский 2" "[Простая установка без настроек]" off \
"Агент" "" on \
"Агент 2" "[Простая установка без настроек]" off 2>3

while read chooseUser
do
   case $chooseUser in
      "Р7 Офис") whiptailChooseOffice </dev/tty;;
      "Ассистент") whiptailChooseAssistant </dev/tty;;
      "Яндекс браузер") whiptailChooseYandexBrowser </dev/tty;;
      "Google Chrome") whiptailChooseGoogleChrome </dev/tty;;
      "Гном Диск") whiptailChooseGnomDisk </dev/tty;;
      "Випнет") whiptailChooseVipnet </dev/tty;;
      "Випнет 2") whiptailChooseVipnetJustInstall </dev/tty;;
      "CryptoPro 5.0") whiptailChooseCryptopro </dev/tty;;
      "Касперский") whiptailChooseKapsersky </dev/tty;;
      "Касперский 2") whiptailChooseKasperskyJustInstall </dev/tty;;
      "Агент") whiptailChooseAgent </dev/tty;;
      "Агент 2") whiptailChooseAgentJustInstall </dev/tty;;
   esac
done < 3