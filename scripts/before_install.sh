#!/bin/bash
set -e

# Locate the deployment directory
DEPLOYMENT_DIR=$(ls -dt /opt/codedeploy-agent/deployment-root/*/ | head -1)

# Check if package.json is in a different directory within DEPLOYMENT_DIR
PACKAGE_JSON_PATH=$(find "$DEPLOYMENT_DIR" -name package.json | head -1)

if [ -z "$PACKAGE_JSON_PATH" ]; then
    echo "Error: package.json not found in deployment."
    exit 1
elif [ "$PACKAGE_JSON_PATH" != "$DEPLOYMENT_DIR/package.json" ]; then
    echo "Moving package.json to expected location..."
    mv "$PACKAGE_JSON_PATH" "$DEPLOYMENT_DIR/"
fi

cd "$DEPLOYMENT_DIR"
npm install

