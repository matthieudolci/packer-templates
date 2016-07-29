#!/bin/sh -eux

chkconfig --level 345 ec2-get-ssh on
chkconfig --level 345 ec2-run-user-data on
chkconfig --level 345 dkms_autoinstaller on
