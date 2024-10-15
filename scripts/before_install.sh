#!/bin/bash
set -e

# Change to the deployment directory
cd /opt/codedeploy-agent/deployment-root/6b279fec-32b6-4172-ab6c-5471e5f13219/ || { echo "Error: Directory not found"; exit 1; }

# Check for the package.json file
if [ ! -f package.json ]; then
    echo "Error: package.json not found in $(pwd)"
    exit 1
fi

echo "package.json found, proceeding with installation..."
# Proceed with your installation commands here
