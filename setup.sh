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
# Execute this script with sudo rights
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

useradd -m -G adm,dialout,sudo,audio,video,plugdev,users,input,netdev,gpio,i2c,spi EscapeRush
passwd EscapeRush
#usermod -aG adm,dialout,sudo,audio,video,plugdev,users,input,netdev,gpio,i2c,spi EscapeRush

aptitude update && aptitude full-upgrade 
aptitude install omxplayer arduino screen wiringPi libpam-systemd arduino python-serial telnet

deluser pi
rm -r /home/pi 

reboot
