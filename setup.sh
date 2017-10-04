#!/bin/bash
# To install on a RaspberryPi for Escape Rush fresh
# Burn Raspbian image
#
# in raspi-config : boot into CLI, no login
#                   change hostname
#                   activate ssh
#                   change location settings
#                   change keyboard layout
#                   change timezone
#                   change memory split
#
#
#
# edit with nano /etc/kbd/config : BLANK_TIME=0 (instead of 30, the default value)
#
# edit with nano /boot/cmdline.txt : add logo.nologo at the end
#
# edit with nano /boot/config.txt : uncomment disableoverscan=1 and set overscan values to 0 (uncommented)
#
# Install Git : sudo apt-get install git
# run : git clone  https://github.com/EscapeRush/RaspberryInstallation.git
# then cd RaspberryInstallation
#      chmod +x setup.sh
#
# execute the cmd below by executing : sudo ./setup.sh

if [ $# -ne 1 ]; then
    echo "Usage : sudo ./setup.sh USERNAME"
    exit 1
fi

aptitude update && aptitude full-upgrade
aptitude install -y -r omxplayer arduino screen wiringPi libpam-systemd python-serial telnet mosquitto mosquitto-clients libmosquitto-dev qt5-default

useradd -m -G adm,dialout,systemd-journal,sudo,audio,video,plugdev,users,input,netdev,gpio,i2c,spi,www-data $1
echo "$1:raspberry" | chpasswd     # Setup default password
passwd -e $1    # Force new password at first login

cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
cp interfaces /etc/network/interfaces

#userdel -f -r pi

reboot
