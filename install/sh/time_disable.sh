#!/bin/bash
clear
echo
echo " -- Синхронизация времени с сетью выключена --"
echo
systemctl disable chronyd ; systemctl stop chronyd
