#!/bin/bash

##################################################################
# Name:         enable_root_ssh.sh
# Description: 	Script to enable ssh for root user on.
# Author:	    Paul Simmons
# Created On: 	September 19th 2022
##################################################################

# Add lines to ssh config that enable root ssh capabilities with documentation
echo "" >> /etc/ssh/sshd_config 
echo "# Allow ssh for root" >> /etc/ssh/sshd_config 
echo PermitRootLogin yes >> /etc/ssh/sshd_config

# Restart ssh server
systemctl restart sshd
