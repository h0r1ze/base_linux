#!/bin/bash
chmod +x dist/CryptoPRO5.0/amd64/install_gui.sh
./dist/CryptoPRO5.0/amd64/install_gui.sh
dnf install dist/CryptoPRO5.0/amd64/ifd-rutokens -y
dnf install dist/CryptoPRO5.0/amd64/cprocsp-rdr-jacarta*.rpm -y
dnf install dist/CryptoPRO5.0/amd64/token-manager -y
dnf install dist/CryptoPRO5.0/amd64/gostcryptogui caja-gostcryptogui -y
dnf install dist/CryptoPRO5.0/amd64/cprocsp-pki*rpm -y
./sh/prog/links-crypto.sh