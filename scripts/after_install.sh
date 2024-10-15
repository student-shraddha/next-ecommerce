#!/bin/bash
set -e

# Locate the latest deployment directory
DEPLOYMENT_DIR=$(ls -dt /opt/codedeploy-agent/deployment-root/*/ | head -1)

# Check if package.json exists in this directory
if [ ! -f "$DEPLOYMENT_DIR/package.json" ]; then
    echo "Error: package.json not found in $DEPLOYMENT_DIR"
    exit 1
fi

echo "package.json found, proceeding with installation..."
cd "$DEPLOYMENT_DIR" && npm install

