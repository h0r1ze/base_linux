#!/bin/bash
clear
echo -n "
___________________________________________________

             Установка Ассистента
___________________________________________________

1) Установить и перезаписать файл в hosts адреса
2) Установить и добавить в конец файла hotst адреса
___________________________________________________

3) Перезаписать файл в hosts адреса
4) Добавить в конец файла hosts адреса
___________________________________________________

5) Проверить файл hosts
6) Править файл hosts
___________________________________________________

0) Выход из скрипта

Введите одно допустимое значение: "
read infoUser
case $infoUser in
    1)  clear
        cat dist/hosts > /etc/hosts
        chmod +x dist/assistant-fstek-4.8.run
        dnf install -y dist/assistant-fstek-4.8.run;;
    2)  clear
        cat dist/proxy/hosts >> /etc/hosts
        chmod +x dist/assistant-fstek-4.8.run
        dnf install -y dist/assistant-fstek-4.8.run;;
    3)  cat dist/hosts > /etc/hosts;;
    4)  cat dist/proxy/hosts >> /etc/hosts;;
    5)  cat /etc/hosts
        echo
        echo -n "Вернуться назад? (y/n): "
        read answerUser
        if [ $answerUser = "Y" ] || [ $answerUser = "y" ]; then
            ./sh/assistant.sh
        else
            exit
        fi;;
    6) nano /etc/hosts;;
    0) echo "Вы вышли из скрипта."
    exit;;
    *) ./sh/assistant.sh
esac