#!/bin/bash

# Navigate to the application directory
cd /opt/codedeploy-agent/deployment-root/6b279fec-32b6-4172-ab6c-5471e5f13219/d-LL4O57SWJ/deployment-archive/opt/codedeploy-agent/deployment-root/6b279fec-32b6-4172-ab6c-5471e5f13219/d-03HESTY87/deployment-archive/  # Change to the correct application path

# Install any dependencies if necessary
echo "Installing dependencies..."
npm install  # Example for a Node.js application
npm run build
# or for Python
# pip install -r requirements.txt

# Run database migrations (if applicable)
echo "Running database migrations..."
# Example for Django
# python manage.py migrate

# Set file permissions if necessary
echo "Setting file permissions..."
chown -R www-data:www-data /opt/codedeploy-agent/deployment-root/6b279fec-32b6-4172-ab6c-5471e5f13219/  # Change ownership to the web server user

# Clear any cached files (if applicable)
echo "Clearing cache..."
# Example for Laravel
# php artisan cache:clear

# Output success message
echo "After install script completed successfully."
