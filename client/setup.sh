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
curl -L -o bungee/bungee.jar https://github.com/QuizzityMC/EaglerServer-1.12/raw/main/bungee/bungee.jar
curl -L -o server/server.jar https://github.com/QuizzityMC/EaglerServer-1.12/raw/main/server/server.jar

echo "Downloading Eaglercraft 1.12.2 client..."
curl -L -o client/index.html "https://github.com/jupitergoesbrr/Eaglercraft-1.12.2/raw/main/Eaglercraft_1.12_Offline_Download.zip"

# Accept EULA automatically
echo "eula=true" > server/eula.txt

echo "Setup complete! Read the instructions to start your server."
