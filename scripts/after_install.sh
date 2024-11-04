#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/next-ecommerce || exit

# Install PM2 if it's not already installed
if ! command -v pm2 &> /dev/null; then
    echo "PM2 not found. Installing PM2 globally..."
    npm install -g pm2
fi

# Stop any running instance of the application to prevent duplicates
pm2 stop "next-ecommerce" || true

# Start the application using PM2 with corrected syntax
pm2 delete all
sleep 5
pm2 start npm --name "next-ecommerce" -- start

# Save the PM2 process list and configure it to restart on reboot
pm2 save
pm2 startup systemd -u ec2-user --hp /home/ec2-user

# Display success message
echo "Application started and PM2 is configured to restart on reboot."
