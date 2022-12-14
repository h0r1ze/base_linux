#!/bin/bash

echo -n "Выберите репозиторий.
1 Цитадель
2 РедОС
Введите число: "
read getnum

if [[ $getnum < 2 ]]
then
    rm /etc/yum.repos.d/*

    echo "[base7.3c]
    name=RedOS - Base 7.3c
    baseurl=http://10.82.102.251/repo/redos/7.3c/x86_64/os/
    enabled=1
    gpgcheck=0

    [updates7.3c]
    name=RedOS - Updates 7.3c
    baseurl=http://10.82.102.251/repo/redos/7.3c/x86_64/updates/
    enabled=1
    gpgcheck=0

    [kernels7.3c]
    name=RedOS - Kernels 7.3c
    baseurl=http://10.82.102.251/repo/redos/7.3c/x86_64/kernels/
    enabled=1
    gpgcheck=0" > /etc/yum.repos.d/local.repo

    echo "# RedOS-Base.repo
    #
    # The mirror system uses the connecting IP address of the client and the
    # update status of each mirror to pick mirrors that are updated to and
    # geographically close to the client.  You should use this for RedOS updates
    # unless you are manually picking other mirrors.
    #
    # If the mirrorlist= does not work for you, as a fall back you can try the 
    # remarked out baseurl= line instead.
    #
    #

    [base]
    name=RedOS - Base
    baseurl=https://repo1.red-soft.ru/redos/7.3c/$basearch/os,https://mirror.yandex.ru/redos/7.3c/$basearch/os,http://repo.red-soft.ru/redos/7.3c/$basearch/os
    failovermethod=priority
    gpgcheck=1
    gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-RED-SOFT
    enabled=0" > /etc/yum.repos.d/RedOS-Base.repo

    echo "# RedOS-Updates.repo
    #
    # The mirror system uses the connecting IP address of the client and the
    # update status of each mirror to pick mirrors that are updated to and
    # geographically close to the client.  You should use this for RedOS updates
    # unless you are manually picking other mirrors.
    #
    # If the mirrorlist= does not work for you, as a fall back you can try the 
    # remarked out baseurl= line instead.
    #
    #

    [updates]
    name=RedOS - Updates
    baseurl=https://repo1.red-soft.ru/redos/7.3c/$basearch/updates,https://mirror.yandex.ru/redos/7.3c/$basearch/updates,http://repo.red-soft.ru/redos/7.3c/$basearch/updates
    failovermethod=priority
    gpgcheck=1
    gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-RED-SOFT
    enabled=0" > /etc/yum.repos.d/RedOS-Updates.repo

    echo "...
Скрипт по замене репозитория на Цитадель выполнен."
else
    rm /etc/yum.repos.d/*

    echo "# RedOS-Base.repo
#
# The mirror system uses the connecting IP address of the client and the
# update status of each mirror to pick mirrors that are updated to and
# geographically close to the client.  You should use this for RedOS updates
# unless you are manually picking other mirrors.
#
# If the mirrorlist= does not work for you, as a fall back you can try the 
# remarked out baseurl= line instead.
#
#

[base]
name=RedOS - Base
baseurl=https://repo1.red-soft.ru/redos/7.3c/$basearch/os,https://mirror.yandex.ru/redos/7.3c/$basearch/os,http://repo.red-soft.ru/redos/7.3c/$basearch/os
failovermethod=priority
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-RED-SOFT
enabled=1" > /etc/yum.repos.d/RedOS-Base.repo
    echo "# RedOS-Updates.repo
#
# The mirror system uses the connecting IP address of the client and the
# update status of each mirror to pick mirrors that are updated to and
# geographically close to the client.  You should use this for RedOS updates
# unless you are manually picking other mirrors.
#
# If the mirrorlist= does not work for you, as a fall back you can try the 
# remarked out baseurl= line instead.
#
#

[updates]
name=RedOS - Updates
baseurl=https://repo1.red-soft.ru/redos/7.3c/$basearch/updates,https://mirror.yandex.ru/redos/7.3c/$basearch/updates,http://repo.red-soft.ru/redos/7.3c/$basearch/updates
failovermethod=priority
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-RED-SOFT
enabled=1" > /etc/yum.repos.d/RedOS-Updates.repo
    echo "...
Скрипт по замене репозитория на РедОС выполнен."
fi
