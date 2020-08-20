#!/usr/bin/env bash


################################################################################
# DESKTOP PRE-INSTALLATION                                                     #
################################################################################

# Note: Run this script as user 'pi'

# CONFIGURE ENVIRONMENT WIFI FROM RASPI-CONFIG
sudo raspi-config
# 1.) Network Options -> Wifi

# INSTALL GIT AND CLONE REPO
sudo apt-get install -y git
mkdir -p ${HOME}/Projects
git clone https://gitlab.com/csmiga/ore.infra.git ${HOME}/ore.infra

# INSTALL zram.sh
sudo mv files/usr_bin/zram.sh /usr/bin/zram.sh
sudo chmod 755 /usr/bin/zram.sh
sudo chown root:root /usr/bin/zram.sh

# INSTALL zram.service
sudo mv files/lib_systemd_system/zram.service /lib/systemd/system/zram.service
sudo chmod 644 /lib/systemd/system/zram.service
sudo chown root:root /lib/systemd/system/zram.service

systemctl enable zram.service
systemctl start zram.service

# CHANGE PASSWORDS
sudo echo -e "generic\ngeneric" | passwd root
sudo echo -e "generic\ngeneric" | passwd pi

# CHANGE HOSTNAME
sudo hostname 'wks-01'

# CHANGE KEYBOARD
sudo sed -i 's/gb/us/g' /etc/default/keyboard

# CHANGE TIMEZONE
echo "America/Eastern" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

# RESTART SYSTEM
sudo shutdown -r now

