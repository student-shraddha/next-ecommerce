#!/bin/bash
# Stop the application
echo "Stopping application..."
pm2 stop next-ecommerce || true
