#!/bin/bash

# Exit immediately if a command exits with a non-zero status
#set -e

# Install Node.js
echo "Setting up Node.js repository..."
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -

echo "Installing Node.js..."
sudo apt install -y nodejs

# Verify the Node.js and npm installation
echo "Node.js version:"
node -v

echo "npm version:"
npm -v

# Install pm2 globally using npm
echo "Installing pm2 globally..."
sudo npm install -g pm2

# Verify pm2 installation
echo "pm2 version:"
pm2 -v

echo "Installation complete."
