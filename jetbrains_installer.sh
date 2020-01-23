#!/bin/bash

echo "Welcome to JetBrains Installer"
sleep 2s
echo "Choose IDE to Install"
echo "1. PyCharm Professional"
echo "2. WebStorm Professional"
read -r CHOICE
echo "$CHOICE"
pycharm_dir="pycharm*"
webstorm_dir="WebStorm*"

# Download package
if [ "$CHOICE" == 2 ]; then
  echo "Downloading PyCharm..."
  wget "https://www.jetbrains.com/pycharm/download/download-thanks.html"
else
  echo "Downloading Webstorm..."
  wget "https://www.jetbrains.com/webstorm/download/download-thanks.html?platform=linux"
fi

cd /opt