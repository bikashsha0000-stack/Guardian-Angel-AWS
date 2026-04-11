#!/bin/bash

# Define the service
SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
    echo "[HEALTHY] - $SERVICE is running. Everything is fine."
else
    echo "[CRITICAL] - $SERVICE is down! Attempting to revive..."
    sudo systemctl start $SERVICE
    
    # Wait 2 seconds and check again
    sleep 2
    if systemctl is-active --quiet $SERVICE; then
        echo "[RECOVERED] - $SERVICE has been successfully restarted."
    else
        echo "[FAILED] - $SERVICE could not be restarted. Manual check required!"
    fi
fi
