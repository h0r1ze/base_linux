#!/bin/bash
clear
dnf install -y dist/kesl-11*.rpm
dnf install -y perl-Getopt-Long perl-File-Copy
/opt/kaspersky/kesl/bin/kesl-setup.pl --autoinstall="dist/autoinstall.ini"
dnf install -y dist/kesl-gui-*.rpm