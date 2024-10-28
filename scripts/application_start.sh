#!/bin/bash
# Start the application
echo "Starting application..."
pm2 start next-ecommerce || true
