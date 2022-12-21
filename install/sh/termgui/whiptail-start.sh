#!/bin/bash
chmod +x *
function whiptailChooseOne {
 ./sh/assistan.sh
}
function whiptailChooseTwo {
 ./kas.sh
}
function whiptailChooseThree {
 ./vip.sh
}
function whiptailChooseFour {
 ./ya.sh
}

whiptail --title "Установка дистрибутивов" --checklist --separate-output "
Выберите один или несколько пунктов для установки на ПК.

Выбор осуществляется нажатием на пробел:
" 22 32 10 \
"Ассистент" "" off \
"Касперский+агент" "" off \
"Випнет" "" off \
"Яндекс" "" off 2>3

while read choice
do
    case $choice in
        "Ассистент + gov") whiptailChooseOne ;;
        Касперский+агент) whiptailChooseTwo ;;
        Випнет) whiptailChooseThree ;;
        Яндекс) whiptailChooseFour ;;
    esac
done < 3
rm 3