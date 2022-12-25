#!/bin/bash
dnf install -y dist/klnagent64-11.*.rpm
/opt/kaspersky/klnagent64/lib/bin/setup/klnagent_setup.pl --autoinstall="dist/autoinstall.ini.ini"
/opt/kaspersky/klnagent64/bin/klnagchk