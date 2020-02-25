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
webstorm_url="https://download.jetbrains.com/webstorm/WebStorm-2019.3.3.tar.gz?_ga=2.88742043.1611910552.1582538215-133917865.1578895696"
pycharm_file_name="pycharm-anaconda.tar.gz"
webstorm_file_name="webstorm.tar.gz"


# Download package
if [ "$CHOICE" == 1 ]; then
  echo "Downloading PyCharm..."
  wget -O $pycharm_file_name $pycharm_url
  echo "Download finished"
  sleep 2s
  echo "Installing Pycharm"
  rm -rf /opt/$pycharm_dir
  rm -rf ~/.java/.userPrefs/jetbrains/pycharm
  rm -rf ~/PycharmProjects
  tar -xvzf $pycharm_file_name -C /opt/
  rm $pycharm_file_name
  rm ~/Desktop/Pycharm.sh
  sleep 2s
  echo "Adding shortcut to desktop"
  touch PyCharm.sh
  echo '#!/bin/bash\nLOC=/opt/pycharm*/bin/\ncd $LOC\n./pycharm.sh' > ~/Desktop/PyCharm.sh
  chmod 777 ~Desktop/PyCharm.sh
else
  sleep 2s
  echo "Downloading Webstorm..."
  wget -O $webstorm_file_name $webstorm_url
  echo "Download finished"
  sleep 2s
  echo "Installing Webstorm"
  rm -rf /opt/$webstorm_dir
  rm -rf ~/.java/.userPrefs/jetbrains/webstorm
  tar -xvzf $webstorm_file_name -C /opt/
  rm $webstorm_file_name
  rm ~/Desktop/Pycharm.sh
  sleep 2s
  echo "Adding shortcut to desktop"
  touch WebStorm.sh
  echo '#!/bin/bash\nLOC=/opt/webstorm*/bin/\ncd $LOC\n./pycharm.sh' > ~/Desktop/PyCharm.sh
  chmod 777 ~Desktop/WebStorm.sh
fi
