#!/bin/bash

# Define variables
APP_NAME="my_app"  # Change this to your application name
APP_PORT=3000      # Change this to the port your app listens on

# Function to stop the server
stop_server() {
    echo "Stopping $APP_NAME..."

    # If using PM2
    if pm2 describe $APP_NAME > /dev/null; then
        pm2 stop $APP_NAME
        echo "$APP_NAME stopped successfully."
    else
        echo "$APP_NAME is not running or not found."
    fi

    # If using other methods, you can replace the above logic
    # Example for a simple application:
    # kill $(lsof -t -i:$APP_PORT)  # This will kill the process using the defined port
}

# Call the function
stop_server
