#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print commands and their arguments as they are executed
set -x

# Checking if NGROK_AUTH_TOKEN is provided
if [ -z "$3" ]; then
  echo "Error: NGROK_AUTH_TOKEN is not provided."
  exit 1
fi

# Store passed arguments
USER1=$1
USER2=$2
NGROK_AUTH_TOKEN=$3

# Authenticate ngrok with the provided token
echo "Authenticating ngrok..."
ngrok authtoken $NGROK_AUTH_TOKEN

# Set up additional environment variables or configuration here
echo "Setting up for user: $USER1 and $USER2"

# Optionally, you could start ngrok or other services here
# For example, you can start an ngrok tunnel for VNC
# ngrok tcp 5900
