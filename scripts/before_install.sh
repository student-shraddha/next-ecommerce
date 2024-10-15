#!/bin/bash
set -e
set -x

# Define the application directory
APP_DIR="/opt/codedeploy-agent/deployment-root/6b279fec-32b6-4172-ab6c-5471e5f13219/"  # Change to your app's deployment directory

# Update and install Node.js
sudo apt-get update -y
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install nodejs -y

# Change to the application directory and install npm packages
cd "$APP_DIR"

# Verify package.json exists before npm install
if [ ! -f "package.json" ]; then
    echo "Error: package.json not found in $APP_DIR"
    exit 1
fi

npm install
