#!/bin/bash

# whiptail --title  "Ручная инсталяция" --checklist \
# "Инсталяция на выбор" 15 60 4 \
# "1" "" OFF \
# "2" "" OFF \
# "Випнет" "" OFF \
# "Яндекс" "" OFF 3>&1 1>&2 2>&3


# exitstatus=$?
# if [ $exitstatus = 0 ];  then
#     case $DISTROS in
#         1) ./ass.sh;;
#         Касперский) ./ass.sh;;
#         Випнет) ./ass.sh;;
#         Яндекс) ./ass.sh;;
#     esac
# else
#      echo "You chose Cancel."
# fi
# if [ $DISTROS = '"1"' ]; then
# echo "1 выполнен"
# fi

# if [ $DISTROS = '"2"' ]; then
# echo "2 выполнен"
# fi
chmod +x *
function whiptailChooseOne {
 ./ass.sh
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
        Ассистент) whiptailChooseOne ;;
        Касперский+агент) whiptailChooseTwo ;;
        Випнет) whiptailChooseThree ;;
        Яндекс) whiptailChooseFour ;;
    esac
done < 3
rm 3


# whiptail --title  "Ручная инсталяция" --checklist \
# "Инсталяция на выбор" 15 30 5 \
# "Р7-Офис" "" OFF \
# "Гном-диск" "" OFF \
# "Ассистент" "" OFF \
# "Випнет" "" OFF \
# "Яндекс" "" OFF \
# "Касперский" "" OFF 6>result

# while read choice
# do
# 	case $choice in
# 		Р7-Офис) ./ass.sh;;
# 		Гном-диск) ./vip.sh;;
# 		Ассистент) ./ya.sh;;
#         Випнет) ./kas.sh;;
# 		Яндекс) ./ass.sh;;
# 		Касперский) ./ass.sh;;
# 	esac
# done < result
# echo ""


# whiptail --title "Test" --checklist --separate-output "Choose:" 20 78 15 \
# "John" "" on \
# "Glen" "" off \
# "Adam" "" off 2>results

# while read choice
# do
# 	case $choice in
# 		John) echo "You chose John"
# 		;;
# 		Glen) echo "You chose Glen"
# 		;;
# 		Adam) echo "You chose Adam"
# 		;;
# 		*)
# 		;;
# 	esac
# done < results




# exitstatus=$?
# if [ $exitstatus = 0 ];  then
#      echo "The chosen distro is:" $DISTROS
# else
#      echo "You chose Cancel."
# fi

# Keep checking if the process is running. And keep a count.
# {
#         percentage="0"
#         while (true)
#         do
#             proc=$(ps aux | grep -v grep | grep -e "python")
#             if [[ "$proc" == "" ]] && [[ "$percentage" -eq "0" ]];
#             then
#                 # Nothing to do as the process was not running when we
#                 # started the script.
#                 break;
#             elif [[ "$proc" == "" ]] && [[ "$percentage" -gt "0" ]];
#             then
#                 # The process has finished. It is no longer running.
#                 # So slowly count the percentage down to 100%.
#                 sleep 2
#                 echo 98
#                 sleep 1
#                 echo 99
#                 sleep 1
#                 echo 100
#                 sleep 1
#                 break;
#             elif [[ "51" -eq "$percentage" ]]
#             then
#                 # The process is running and taking really long.
#                 # Instead of running up to # 100% we instead reach 50% and
#                 # reset the percentage count back to 30%.
#                 # Now that we are back at 30% we can start counting again.
#                 # We will keep looping here forever until the running process stops.
#                 percentage="30"
#             fi
#             sleep 1
#             echo $percentage
#             percentage=$(expr $percentage + 1)
#         done
# } | whiptail --title "Example" --gauge "Just another example" 6 50 0


# for i in $(dnf install -y yandex-browser-stable-22.7.5.933-1.x86_64.rpm)
# do
#     sleep 0.1 
#     echo $i
#     read -t 0.1 -N 1 input
#    if [[ $input == 'q' ]] || [[ $input == "Q" ]];then
#         break;
#    fi
# done | whiptail --title 'Test script' --gauge 'Running...' 6 60 0