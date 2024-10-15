#!/bin/bash
set -e  # Exit on error

# Locate the latest deployment directory dynamically
DEPLOYMENT_DIR=$(ls -dt /opt/codedeploy-agent/deployment-root/*/ | head -1)

# Check if package.json exists to verify deployment directory
if [ ! -f "$DEPLOYMENT_DIR/package.json" ]; then
    echo "Error: package.json not found in $DEPLOYMENT_DIR"
    exit 1
fi

echo "package.json found, proceeding with post-installation tasks..."

# Navigate to the deployment directory
cd "$DEPLOYMENT_DIR"

# 1. Install Node.js dependencies
echo "Installing dependencies with npm..."
npm install

# 2. Set up environment variables
echo "Setting up environment variables..."
export NODE_ENV=production

# 3. Restart application service (e.g., if using PM2 or systemd)
# If using PM2
echo "Restarting application with PM2..."
pm2 restart app.js || pm2 start app.js

# Alternative if using a systemd service (uncomment if applicable)
# echo "Restarting application service..."
# sudo systemctl restart my-application.service

# 4. Verify the deployment
echo "Verifying application status..."
# Example: Check if the app is running on its port
curl -f http://localhost:3000 || {
    echo "Application failed to start or is not accessible."
    exit 1
}

echo "Deployment completed successfully."

