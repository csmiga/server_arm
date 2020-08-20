#!/usr/bin/env bash


################################################################################
# DESKTOP POST INSTALLATION                                                    #
################################################################################

# Note: Run this script as user 'pi'

### SSH
ssh-keygen -f ${HOME}/.ssh/id_rsa -t rsa -N ''
mkdir ${HOME}/.ssh/keys
chmod 700 ${HOME}/.ssh/keys
mv ${HOME}/.ssh/id_rsa.pub ${HOME}/.ssh/keys/id_rsa-$(whoami).pub
mv ${HOME}/.ssh/id_rsa ${HOME}/.ssh/keys/id_rsa-$(whoami)
chmod 600 ${HOME}/.ssh/keys/*
ln -s ${HOME}/.ssh/keys/id_rsa-$(whoami) ${HOME}/.ssh/id_rsa

mkdir ${HOME}/.ssh/configs
chmod 700 ${HOME}/.ssh/configs
mv files/home_user_ssh_configs/config.lab ${HOME}/.ssh/configs/config.lab
chmod 600 ${HOME}/.ssh/configs/config.lab
ln -s ${HOME}/.ssh/configs/config.lab ${HOME}/.ssh/config

mkdir ${HOME}/.ssh/sshfs
mv files/home_user_ssh_sshfs/node1 ${HOME}/.ssh/sshfs/node1
chmod -R 700 ${HOME}/.ssh/sshfs
sudo mkdir /mnt/node1
sudo chgrp users /mnt/node1
sudo chmod 775 /mnt/node1
sudo usermod -a -G users $(whoami)

mkdir ${HOME}/.ssh/sshpass
mv files/home_user_ssh_sshpass/ssh-password ${HOME}/.ssh/sshpass/ssh-password
chmod -R 700 ${HOME}/.ssh/sshpass

mkdir ${HOME}/.ssh/sshuttle
mv files/home_user_ssh_sshuttle/* ${HOME}/.ssh/sshuttle/
chmod -R 700 ${HOME}/.ssh/sshuttle

