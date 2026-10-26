#!/bin/bash

# Create system directory structures
mkdir -p server/bungee/plugins
mkdir -p server/java/plugins

# 1. Download Paper 1.12.2 Jar build
echo "Downloading Paper Minecraft 1.12.2 Server..."
curl -o server/java/paper-1.12.2.jar https://papermc.io

# 2. Download BungeeCord 
echo "Downloading BungeeCord Proxy Middleware..."
curl -o server/bungee/BungeeCord.jar https://md-5.net

# 3. Setup configurations to accept EULA and bypass offline verification errors
echo "eula=true" > server/java/eula.txt

cat <<EOT > server/java/server.properties
online-mode=false
server-port=25565
gamemode=survival
spawn-protection=0
EOT

echo "========================================================="
echo "Setup Complete!"
echo "IMPORTANT REMINDER: Remember to upload your custom translation"
echo "plugins (ViaVersion, ViaBackwards, EaglercraftXBungee) into"
echo "their respective plugins directories before booting up."
echo "========================================================="
