#!/bin/bash
dnf install -y dist/klnagent64-11.*.rpm
/opt/kaspersky/klnagent64/lib/bin/setup/klnagent_setup.pl
/opt/kaspersky/klnagent64/bin/klnagchk
echo -e "
Выведена информация о доступности сервера, проверьте что вы действительно подключены

Хотите продолжить дальше? (нажмите любую кнопку): "
read answerUser
if [ $answerUser = "Y" ] || [ $answerUser = "y" ]; then
    clear
else
    clear
fi
