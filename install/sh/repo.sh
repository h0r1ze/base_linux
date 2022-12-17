#!/bin/bash

echo -n "
                            !!! ВНИМАНИЕ !!!

!!! --- ПРЕЖДЕ ЧЕМ УСТАНАВЛИВАТЬ РЕПОЗИТОРИЙ ЦИТАДЕЛИ ОТКЛЮЧИТИ ПРОКСИ -- !!!

Выберите репозиторий с которого хотите осуществить следующее обновление.
1) Цитадель
2) РедОС
3) Обновить систему
4) Назад
Введите число(1 или 4): "
read getnum

if [[ $getnum = 1 ]]
then
    rm /etc/yum.repos.d/*
    cp repo/local.repo /etc/yum.repos.d/
    echo "...
    Скрипт по замене репозитория на Цитадель выполнен."
fi
if [[ $getnum = 2 ]]
then
    rm /etc/yum.repos.d/*
    cp repo/RedOS-Base.repo /etc/yum.repos.d/ 
    cp repo/RedOS-Updates.repo /etc/yum.repos.d/ 
    echo "...
    Скрипт по замене репозитория на РедОС выполнен."
fi

if [[ $getnum = 3 ]]
then
    dnf update -y 
fi

if [[ $getnum = 4 ]]
then
    echo "
    "
    ./install.sh
fi
./sh/repo.sh