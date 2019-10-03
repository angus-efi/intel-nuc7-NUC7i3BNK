#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Uninstalling Script and Utility ..."
sudo killall -c Realtek\ WLAN\ Client\ Utility
sudo rm -rf /Library/StartupItems/RealtekWLANClientUtility
sudo rm -rf /Library/LaunchAgents/com.Realtek.wutility
echo "Uninstalling UI..."
sudo rm -rf /Applications//Realtek\ WLAN\ Client\ Utility.app

echo "Removing Driver..."
sudo rm -rf /System/Library/Extensions/RTL8192sul.kext

echo "Removing Pkg"
sudo rm -rf /Library/Receipts/rtl8192sul.pkg
sudo rm -rf /Library/Receipts/RealtekWlanClientUtility.pkg
sudo rm -rf /Library/Receipts/comrealtek.pkg

echo "Uninstall Complete."
