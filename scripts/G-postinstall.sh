#!/bin/bash
set -a
if [ "$UID" == 0 ]; then
    sudoused="sudo"
else
    sudoused=""
fi
echo "Choose a DE/WM, current options: 1. KDE Plasma or 2. GNOME (1/2)"
read choice
if [ "$choice" == "1" ]; then
    de="kde"
else
    de="gnome"
fi
if [ "$de" == "kde" ]; then
    echo "Installing KDE Plasma!"
    $sudoused pacman -S plasma-meta
else
    echo "Installing GNOME!"
    $sudoused pacman -S gnome
fi
