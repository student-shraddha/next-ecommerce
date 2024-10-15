#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Set the deployment directory
DEPLOYMENT_DIR="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_ID"

# Check for package.json
if [ ! -f "$DEPLOYMENT_DIR/package.json" ]; then
    echo "Error: package.json not found in $DEPLOYMENT_DIR"
    exit 1
else
    echo "Found package.json in $DEPLOYMENT_DIR"
fi

# Install Node.js dependencies
cd "$DEPLOYMENT_DIR"
npm install

