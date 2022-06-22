#!/bin/bash
#======================================
# Prevent cloud-init from disabling SSH password authentication and root user login
#--------------------------------------
sed -i 's/ssh_pwauth:   0/ssh_pwauth:   1/g' /etc/cloud/cloud.cfg
sed -i 's/disable_root: 1/disable_root: 0/g' /etc/cloud/cloud.cfg

#======================================
# Allow root SSH login
#--------------------------------------
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

#======================================
# Fix Permission on /etc/sudoers
#--------------------------------------
chmod 600 /etc/sudoers

#======================================
# Reset /etc/machine-id to ensure all VMs boot with a unique ID
#--------------------------------------
rm -f /etc/machine-id
touch /etc/machine-id
