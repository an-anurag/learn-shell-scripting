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
pycharm_url="https://data.services.jetbrains.com/products/download?code=PCP&platform=linuxAnaconda&_ga=2.141656369.246534920.1581577435-133917865.1578895696"
file_name="pycharm-anaconda.tar.gz"


# Download package
if [ "$CHOICE" == 1 ]; then
  echo "Downloading PyCharm..."
  wget -O $file_name $pycharm_url
  echo "Download finished"
  sleep 2s
  echo "Installing Pycharm"
  rm -rf /opt/$pycharm_dir
  rm -rf ~/.java/.userPrefs/jetbrains/pycharm
  rm -rf ~/PycharmProjects
  tar -xvzf $file_name -C /opt/
  rm $file_name
  rm ~/Desktop/Pycharm.sh
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
