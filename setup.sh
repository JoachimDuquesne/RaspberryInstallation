#!/bin/bash
# To install on a RaspberryPi for Escape Rush fresh
# Burn Raspbian JESSIE image
# http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-07-05/
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
# edit with nano /etc/lightdm/lightdm.conf to enable autologin in gui
#

aptitude update && aptitude full-upgrade
aptitude install -y -r git omxplayer arduino arduino-mk screen wiringPi libpam-systemd libasound2-dev python-serial telnet mosquitto mosquitto-clients libmosquitto-dev libmosquittopp-dev qt5-default libpcre++-dev libboost-dev libdbus-1-dev libjpeg8-dev
