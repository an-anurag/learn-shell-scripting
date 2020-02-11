#!/bin/bash

echo "###############################"
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
if [ "$CHOICE" == 1 ]; then
  echo "Downloading PyCharm..."
  wget "https://www.jetbrains.com/pycharm/download/download-thanks.html"
  echo "Download finished"
  sleep 2s
  echo "Installing Pycharm"
  tar -xvzf $pycharm_dir -C /opt/
  rm $pycharm_dir
  sleep 2s
  echo "Adding shortcut to desktop"
  touch PyCharm.sh
  echo '#!/bin/bash\nLOC=/opt/pycharm*/bin/\ncd $LOC\n./pycharm.sh' > ~/Desktop/PyCharm.sh
  chmod 777 ~Desktop/PyCharm.sh
else
  echo "Downloading Webstorm..."
  wget "https://www.jetbrains.com/webstorm/download/download-thanks.html?platform=linux"
  tar -xvzf $webstorm_dir -C /opt/
fi
