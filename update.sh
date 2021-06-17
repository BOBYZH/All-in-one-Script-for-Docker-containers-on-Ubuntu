#!/usr/bin/env bash

## Use root without password prompt
echo "Use root without password"
sudo su

#  Upgrade packages
echo "Upgrade packages"
apt update
apt list --upgradable
apt upgrade

# Remove unused
apt --purge autoremove -y

## OS Update Tool(WIP) ref: do-release-upgrade -d
# echo "Upgrade Ubuntu"
# echo "Current version of OS and kernel"
# lsb_release -a
# echo "uname -mrs"
# echo "Start to update"
# apt install update-manager-core
# do-release-upgrade -d
