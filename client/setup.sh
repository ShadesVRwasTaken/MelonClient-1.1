#!/bin/bash

# Update packages and install Java 8 (required for older 1.12.2 servers)
echo "Installing Java..."
sudo apt-get update
sudo apt-get install -y openjdk-8-jre-headless

# Create directories
mkdir -p server bungee client

# Download Eaglercraft 1.12.2 Server/Bungee components
# Note: Replace these URLs with your preferred repository sources if you have specific forks
echo "Downloading Server and Bungee components..."
curl -L -o bungee/bungee.jar https://github.com
curl -L -o server/server.jar https://github.com

# Accept EULA automatically
echo "eula=true" > server/eula.txt

echo "Setup complete! Read the instructions to start your server."
