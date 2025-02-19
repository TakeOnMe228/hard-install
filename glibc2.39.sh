#!/bin/bash
echo "deb http://ports.ubuntu.com/ubuntu-ports noble main" | sudo tee -a /etc/apt/sources.list.d/noble.list
echo "deb http://ports.ubuntu.com/ubuntu-ports noble-updates main" | sudo tee -a /etc/apt/sources.list.d/noble-updates.list
sudo apt update
sudo apt install libc6 -t noble

#disable repo
sudo rm /etc/apt/sources.list.d/noble.list
sudo rm /etc/apt/sources.list.d/noble-updates.list
sudo apt update
