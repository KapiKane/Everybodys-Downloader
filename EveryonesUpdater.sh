#!/bin/bash

echo "  __  __     ______   _____     ______     ______   ______     ______    "   
echo " /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\   /\  == \   "
echo " \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\   \ \  __<   " 
echo "  \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\  \ \_\ \_\ "
echo "   \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/   \/_/ /_/ "
echo " "
echo "                             By Kapikaine                                "
read -n 1

while true; do
    read -p "Please Choose Your Distro-base answer
1. Debian
2. Red Hat Enterprise Linux/RHEL
3. Arch Linux
4. Slackware
5. Gentoo
6. Software und System-Entwicklung/SUSE
7. Void Linux
8. Exit
Please Input the Number (Eg: 1, output = Debian) " DISTRO
    
    if [ "$DISTRO" == "1" ]; then
        echo "Your Chosen Distro is: Debian"
        read -n 1
        apt update
        sudo reboot
        break

    elif [ "$DISTRO" == "2" ]; then
        echo "Your Chosen Distro is: Red Hat Enterprise Linux (RHEL)"
        read -n 1
        break
        sudo yum update
        sudo reboot

    elif [ "$DISTRO" == "3" ]; then
        echo "Your Chosen Distro is: Arch Linux"
        read -n 1
        sudo pacman -Syu
        sudo reboot
        break

    elif [ "$DISTRO" == "4" ]; then
        echo "Your Chosen Distro is: Slackware"
        read -n 1
        slackpkg update
        slackpkg upgrade-all
        sudo reboot
        break

    elif [ "$DISTRO" == "5" ]; then
        echo "Your Chosen Distro is: Gentoo"
        read -n 1
        emerge -avuDN @world
        sudo reboot
        break

    elif [ "$DISTRO" == "6" ]; then
        echo "Your Chosen Distro is: Software und System-Entwicklung SUSE"
        read -n 1
        sudo zypper refresh
        sudo zypper update
        sudo reboot
        break

    elif [ "$DISTRO" == "7" ]; then
        echo "Your Chosen Distro is: Void Linux"
        read -n 1
        xbps-install -S
        xbps-install -xbps
        xbps-install -u
        sudo reboot
        break
        
    elif [ "$DISTRO" == "8" ]; then
        echo "Thanks for using updater! - KapiKaine :>"
        read -n 1
        exit
    else
        echo "You said $DISTRO?"
        read -n 1
        clear
    fi
done
