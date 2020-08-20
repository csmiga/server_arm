#!/usr/bin/env bash


################################################################################
# DESKTOP INSTALLATION                                                         #
################################################################################

# Note: Run this script as user 'pi'

cd ${HOME}/Projects/ore.infra

# UPDATE SOFTWARE DATABASE AND PACKAGES
sudo apt-get update --yes
sleep 5
sudo apt-get upgrade --yes
sleep 5

# MINIMUM DESKTOP (95Mb RAM)
sudo apt-get install --no-install-recommends --yes raspberrypi-ui-mods
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP MANAGER
# Select LXDM as the default Desktop Manager (DM)
sudo apt-get install --no-install-recommends --yes lxdm \
    lxde-core
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# LXQT DESKTOP (??? Mb RAM) AND FEATURES
sudo apt-get install --no-install-recommends --yes lxqt \
    task-lxqt-desktop
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# LXDE DESKTOP (103 Mb RAM) AND FEATURES
sudo apt-get install --no-install-recommends --yes lxde \
    lxappearance \
    lxappearance-obconf \
    task-lxde-desktop \
    lxterminal \
    lxmusic \
    lxshortcut \
    pt-ui-mods
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# XFCE4 DESKTOP (148 Mb RAM) AND FEATURES
sudo apt-get install --no-install-recommends --yes xfce4 \
    xfce4-terminal
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP FEATURES
sudo apt-get install --no-install-recommends --yes xscreensaver \
    xscreensaver-data \
    xscreensaver-data-extra \
    xscreensaver-gl \
    xscreensaver-gl-extra \
    xscreensaver-screensaver-bsod \
    xscreensaver-screensaver-dizzy \
    xscreensaver-screensaver-webcollage
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

sudo apt-get install --no-install-recommends --yes wbar \
    wbar-config \
    conky \
    conky-all
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP SOFTWARE
sudo apt-get install --no-install-recommends --yes menulibre \
    clamtk \
    vinagre \
    chromium-browser \
    leafpad \
    inkscape \
    gnome-photos \
    gnome-calculator \
    planner \
    vym
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP MEDIA
sudo apt-get install --no-install-recommends --yes brasero \
    vlc \
    vlc-plugin* \
    audacious \
    audacious-plugins \
    cheese \
    rhythmbox \
    gnome-mplayer
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP COMMUNICATION
sudo apt-get install --no-install-recommends --yes empathy \
    polari \
    evolution \
    evolution-plugins \
    evolution-rss
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP ENGINEERING AND DESIGN
sudo apt-get install --no-install-recommends --yes gparted \
    dia \
    dia-rib-network \
    dia-shapes \
    dia2code \
    wireshark \
    fwbuilder
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP SOFTWARE DEVELOPMENT APT-GET
sudo apt-get install --no-install-recommends --yes gedit \
    gedit-latex-plugin \
    gedit-plugins \
    gedit-r-plugin \
    gedit-source-code-browser-plugin \
    gnome-builder \
    bluefish \
    bluefish-plugins \
    geany \
    geany-plugins
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# DESKTOP SOFTWARE DEVELOPMENT VISUAL STUDIO CODE
sudo . <( wget -O - https://code.headmelted.com/installers/apt.sh )
sleep 5

# DESKTOP GAMES
sudo apt-get install --no-install-recommends --yes xboard \
    wesnoth \
    freeciv \
    toppler \
    frozen-bubble \
    pingus \
    tagua
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y

# CLI TOOLS
sudo apt-get install --no-install-recommends --yes nmap \
    tcpdump \
    iftop \
    htop \
    sshfs \
    sshpass \
    sshuttle \
    vim-gui-common
sleep 5
sudo apt-get clean all
sudo apt-get autoremove -y


