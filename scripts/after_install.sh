#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/next-ecommerce || exit

# Install PM2 if it's not already installed
if ! command -v pm2 &> /dev/null; then
    echo "PM2 not found. Installing PM2 globally..."
    npm install -g pm2
fi

# Start the application using PM2
pm2 start npm --name "next-ecommerce" -- start

# Save the PM2 process list and configure it to restart on reboot
pm2 save
pm2 startup -u ec2-user --hp /home/ec2-user
