    chmod +x sh/browser.sh
    chmod +x sh/kaspersky.sh
    chmod +x sh/office.sh
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