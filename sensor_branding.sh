rm -rf /etc/motd
touch  /etc/motd
echo -e "\e[1;31m=========================================================================
=========================================================================\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m    _   _______ _____    _____ ______ _____ _    _ _____  ______     \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m   | | |__   __/ ____|  / ____|  ____/ ____| |  | |  __ \|  ____|    \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m   | |    | | | (___   | (___ | |__ | |    | |  | | |__) | |__       \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m   | |    | |  \___ \   \___ \|  __|| |    | |  | |  _  /|  __|      \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m   | |____| |  ____) |  ____) | |___| |____| |__| | | \ \| |____     \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==\e[1;34m   |______|_| |_____/  |_____/|______\_____|\____/|_|  \_\______|    \e[1;31m==\e[0m" >> /etc/motd
echo -e "\e[1;31m==                                                                     ==\e[0m" >> /etc/motd
echo -e "\e[1;31m=========================================================================
====================  \e[1;34m http://www.ltssecure.com  \e[1;31m =======================
=========================================================================\e[0m" >> /etc/motd
echo -e "\e[1;31m====\e[1;34m  Access the Lts Secure web interface using the following URL:  \e[1;31m=====\e[0m" >> /etc/motd
echo -e "\e[1;34m                         https://172.16.0.221/\e[0m" >> /etc/motd
echo -e "\e[1;31m=========================================================================\e[0m" >> /etc/motd
sed -i 's/AlienVault Setup/LTS Secure Setup/g' /etc/ossim/menu.cfg
sed -i 's/Configure AlienVault Server IP/Configure LTS Secure Server IP/g' /etc/ossim/menu.cfg
sed -i 's/Configure AlienVault Framework IP/Configure LTS Secure Framework IP/g' /etc/ossim/menu.cfg
sed -i 's/menus=network,hostname,mail_relay,locale,mant_passwd,reset_avapi_key,system_updates/menus=network,hostname,mail_relay,locale,mant_passwd/g'  /etc/ossim/menu.cfg
sed -i 's/Access the AlienVault web interface using the following URL/Access the LTS Secure web interface using the following URL/g' /usr/share/ossim/setup/ossim-setup
#sed -i 's/www.alienvault.com/www.cloudaccess.com/g' /bin/av_bash_acc
sed -i 's,Read more at http://www.alienvault.com/jailbreak, ,g' /bin/av_bash_acc
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/de/LC_MESSAGES/ossim.po 
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/zh_CN/LC_MESSAGES/ossim.po 
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/es/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/ru/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/fr/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/zh_TW/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/ja/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/locale/pt_BR/LC_MESSAGES/ossim.po
sed -i 's/AlienVault/LTSSecure/g' /usr/share/ossim/www_orignal/conf/index.php 
sed -i 's/AlienVault/LTSSecure/g' /usr/share/alienvault-center/lib/AV/Log.pm
cp -rvfp  /etc/motd /etc/motd.tail
sed -i 's/GREEN/BLUE/g' /root/.dialogrc
sed -i 's/label=Reboot Appliance/label=Reboot/g' /etc/ossim/menu.cfg
sed -i 's/label=Shutdown Appliance/label=Shutdown/g' /etc/ossim/menu.cfg
sed -i 's/alienvault4/ltssecure/g'  /etc/ossim/.ossim_installer_version
sed -i 's/AlienVault/LTSSecure/g' /etc/issue
sed -i 's/menus=register_appliance,system_settings,sensor_settings,database_settings,maintenance,jailbreak,mant_support,about,mant_appliance_reboot,mant_appliance_shutdown,save_and_exit/menus=register_appliance,system_settings,sensor_settings,database_settings,maintenance,jailbreak,mant_appliance_reboot,mant_appliance_shutdown,save_and_exit,about/g'  /etc/ossim/menu.cfg
sed -i 's/AlienVault Version/LTSSecure Version/g' /usr/share/python/alienvault-api-core/local/lib/python2.7/site-packages/alienvault-api-core/ansiblemethods/system/about.py
sed -i 's/label=Jailbreak System/label=Command Line/g' /etc/ossim/menu.cfg
sed -i 's/OSSIM/LTSSECURE/g' /usr/share/python/alienvault-api-core/local/lib/python2.7/site-packages/alienvault-api-core/ansiblemethods/system/about.py
sed -i 's/Jailbreak/ /g' /bin/av_bash_acc


