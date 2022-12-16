#!/bin/bash
echo -n "-- Исталяция ПО --
Выберите один из пунктов инсталяции:
1) Все (VipNet + Kasper + NetAgent + yandex)
2) СКЗИ (VipNet + Kasper + NetAgent)
3) Браузер (Яндекс браузер)
4) Офис (Р7 Офис)
Введите число(1 или 4): "
read getnum

if [ $getnum = 1 ] 
then
    echo "All in one"
fi 
 
if [ $getnum = 2 ] 
then
    echo "vipnet + kes + netagent" 
fi

if [ $getnum = 3 ] 
then
    echo "Установка Office и Yandex browser" 
fi

if [ $getnum = 4 ]
then
    echo "Установка Office"  
fi
