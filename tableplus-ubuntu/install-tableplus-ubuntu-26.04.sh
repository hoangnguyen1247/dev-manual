#!/bin/bash
set -e

wget -qO - https://deb.tableplus.com/apt.tableplus.com.gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tableplus-archive.gpg > /dev/null
sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian/26 tableplus main"
sudo apt update
sudo apt install tableplus
