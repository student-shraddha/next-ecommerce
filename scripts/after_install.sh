#!/bin/bash

echo "Installing Node.js and npm..."
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -    # For Amazon Linux 2
# curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -    # For Ubuntu
sudo yum install -y nodejs      # For Amazon Linux 2
# sudo apt install -y nodejs    # For Ubuntu

echo "Installing dependencies..."
npm install
