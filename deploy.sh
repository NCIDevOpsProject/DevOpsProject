#!/bin/bash
sudo apt update && sudo apt install nodejs npm

# Install PM2
sudo npm install -g pm2

# Stop any running instance of the app
pm2 stop ItineraryApp

# Move into the application directory folder
cd DevOpsProject/

# Install appdependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application using PM2
pm2 start ./bin/www --name ItineraryApp