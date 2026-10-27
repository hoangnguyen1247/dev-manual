#!/bin/bash
set -e

# TARGET_VERSION=1.106.0

sudo apt update && sudo apt upgrade -y
# sudo apt install software-properties-common apt-transport-https curl ca-certificates

curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

sudo apt update
sudo apt install microsoft-edge-stable
