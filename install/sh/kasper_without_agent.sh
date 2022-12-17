#!/bin/bash
dnf install -y dist/kesl-11*.rpm
dnf install -y perl-Getopt-Long perl-File-Copy
/opt/kaspersky/kesl/bin/kesl-setup.pl --autoinstall="dist/autoinstall.ini"
dnf install -y dist/kesl-gui-*.rpm
dnf install -y dist/klnagent64-11.*.rpm
#/opt/kaspersky/klnagent64/lib/bin/setup/klnagent_setup.pl
#/opt/kaspersky/klnagent64/bin/klnagchk