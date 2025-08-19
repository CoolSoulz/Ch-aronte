#!/bin/bash
set -a
echo "Choose a DE/WM, current options: 1. KDE Plasma or 2. GNOME (1/2)"
read choice
if [ "$choice" == "1" ]
    de="kde"
else
    de="gnome"
fi
echo "You selected $de"
