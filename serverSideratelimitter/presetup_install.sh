#!/bin/bash

# Update package list
apt-get update

# Install Ansible
apt-get install ansible -y

# Check Ansible version
ansible --version

# Check if Python3 is installed
if command -v python3 &>/dev/null; then
    echo "Python3 is already installed"
else
    # Install Python3
    apt-get install python3 -y
fi

# Check Python3 version
python3 --version

# Install pip for Python3
apt-get install python3-pip -y

# Install Kubernetes Python client
pip3 install kubernetes