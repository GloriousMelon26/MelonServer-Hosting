#!/bin/bash
# Create working directories
mkdir -p server/bungee
mkdir -p server/java

# Download BungeeCord and EaglerX Server translations layers
# Note: For production use, ensure verified binary sources are referenced.
curl -o server/bungee/BungeeCord.jar https://md-5.net

# Setup baseline configuration scripts to bypass online-mode validation
echo "eula=true" > server/java/eula.txt

cat <<EOT > server/java/server.properties
online-mode=false
server-port=25565
gamemode=survival
EOT

echo "Initialization complete. Run your launch script to bind the system endpoints."
