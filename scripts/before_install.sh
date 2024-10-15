#!/bin/bash
set -e

# Define the base deployment directory
BASE_DEPLOYMENT_DIR="/opt/codedeploy-agent/deployment-root"
DEPLOYMENT_ARCHIVE="deployment-archive"

# Locate the latest deployment directory dynamically
LATEST_DEPLOYMENT_DIR=$(ls -td ${BASE_DEPLOYMENT_DIR}/*/ | head -n 1)${DEPLOYMENT_ARCHIVE}

echo "Looking for package.json in $LATEST_DEPLOYMENT_DIR..."

# Verify if package.json exists in the identified directory
if [ -f "$LATEST_DEPLOYMENT_DIR/package.json" ]; then
    echo "package.json found in $LATEST_DEPLOYMENT_DIR, proceeding with installation..."
    cd "$LATEST_DEPLOYMENT_DIR"
else
    echo "Error: package.json not found in $LATEST_DEPLOYMENT_DIR"
    exit 1
fi

# Install dependencies if package.json is found
npm install

