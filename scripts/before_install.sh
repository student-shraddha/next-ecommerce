
#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Define the deployment directory
DEPLOYMENT_DIR="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_ID/deployment-archive"

# Check if package.json exists in the expected directory
if [ ! -f "$DEPLOYMENT_DIR/package.json" ]; then
    echo "Error: package.json not found in $DEPLOYMENT_DIR"
    exit 1
fi

# Proceed with installation or other tasks
echo "package.json found, proceeding with installation..."
