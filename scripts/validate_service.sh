#!/bin/bash
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin

# Check if pm2 is installed
if ! command -v pm2 &> /dev/null
then
    echo "PM2 is not installed. Installing..."
    npm install -g pm2
fi

# Check if the application is running
if pm2 list | grep -q "your-app-name"; then
    echo "Application is running."
else
    echo "Application is not running."
    exit 1
fi
