#!/bin/bash
clear
dnf install -y dist/kesl-11*.rpm
dnf install -y perl-Getopt-Long perl-File-Copy
dnf install -y dist/kesl-gui-*.rpm