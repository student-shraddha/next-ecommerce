#!/bin/bash

echo "Navigating to the application directory..."
cd /home/ec2-user/next-ecommerce || exit

echo "Installing Node.js..."
sudo yum install -y nodejs

echo "Clearing npm cache and installing dependencies..."
npm cache clean --force
rm -rf node_modules package-lock.json
npm install
