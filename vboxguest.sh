#!/bin/bash


# mount the image
sudo mkdir /media/cdrom
sudo mount /dev/cdrom /media/cdrom
cd /media/cdrom

# install the necessary dependencies
sudo apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)

# change to root
sudo su

# install guest additions
./VboxLinuxAdditions.run

# add user to group to grant permissions
sudo usermod -aG vboxsf $(whoami)

# reboot
reboot