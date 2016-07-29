#!/bin/sh -eux

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm
rpm -ivh epel-release-7-6.noarch.rpm
yum --enablerepo=epel -y install dkms
wget "sourceforge.net/projects/e1000/files/ixgbevf stable/2.14.2/ixgbevf-2.14.2.tar.gz"
tar -xzf ixgbevf-2.14.2.tar.gz
mv ixgbevf-2.14.2 /usr/src/
touch /usr/src/ixgbevf-2.14.2/dkms.conf
