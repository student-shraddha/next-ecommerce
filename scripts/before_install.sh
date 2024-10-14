#!/bin/bash
echo "Running Before Install Script"

# Add your installation commands here
# e.g., stopping services, cleaning up old files, etc.

# Example of stopping a service
# service myapp stop

apt update -y
apt upgrade -y
npm i
npm run build
