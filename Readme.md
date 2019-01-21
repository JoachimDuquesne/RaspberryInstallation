# Setup
### Configure SD Card
- Burn Strech SD Card
- Add ssh file in 'boot' partition
- add "wpa_passphrase SSID PASS" output to etc/wpa_supplicant/wpa_supplicant.conf
- cp /etc/wpa_supplicant/ifupdown.sh /etc/ifplugd/action.d/ifupdown
- Change "raspberrypi" in /etc/hostname and /etc/hosts to NEWHOSTNAME

### After first boot
- Login in ssh with pi@NEWHOSTNAME.local
- adduser *USER
- usermod -aG sudo,*** NEWUSER
- Logout of Pi and login in NEWUSER
- deluser pi
- rm -f /home/pi
- raspi-config camera on
- aptitude update && aptitude full-upgrade

