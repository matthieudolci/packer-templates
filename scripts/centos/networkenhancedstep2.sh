#!/bin/sh -eux

dkms add -m ixgbevf -v 2.14.2
dkms build -m ixgbevf -v 2.14.2
dkms install -m ixgbevf -v 2.14.2
cp -p /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r).img.bak
dracut -f
rm epel-release-7-6.noarch.rpm
rm ixgbevf-2.14.2.tar.gz
