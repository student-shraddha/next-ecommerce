#!/bin/bash
# Check if the application is running
if pm2 list | grep -q next-ecommerce; then
  echo "Application is running."
else
  echo "Application is not running." >&2
  exit 1
fi

