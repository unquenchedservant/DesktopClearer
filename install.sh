#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
else
    mkdir /usr/lib/dtClear;
    wget https://raw.githubusercontent.com/unquenchedservant/DesktopClearer/master/desktopclearer.sh;
    mv desktopclearer.sh /usr/bin/dtClear;
    chmod -R 777 /usr/lib/dtClear;
    chmod +x /usr/bin/dtClear;
fi
