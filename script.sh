#!/bin/bash

# Determine OS type and package manager
if [ -f /etc/redhat-release ]; then
    OS_TYPE="centos"
    PKG_MGR="yum"
elif [ -f /etc/debian_version ]; then
    OS_TYPE="debian"
    PKG_MGR="apt-get"
else
    echo "Unsupported OS type"
    exit 1
fi

# Install nginx
if [ $OS_TYPE == "centos" ]; then
    sudo $PKG_MGR install epel-release -y
fi
sudo $PKG_MGR update -y
sudo $PKG_MGR install nginx -y

# Start nginx and enable it to start on boot
sudo systemctl start nginx
sudo systemctl enable nginx

# Check nginx status
sudo systemctl status nginx