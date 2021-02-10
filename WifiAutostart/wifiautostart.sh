#!/bin/bash -v
#
# WifiAutostart by LeSnake04
# Version 1.0 
#
# Code under GPL 3 License: https://www.gnu.org/licenses/gpl-3.0.html


# General Wifi 
PROGNAME="WifiAutostart"

#Enable Networking
nmcli n on

#Get SSID of Wifi
getwifiname (){
	WIFINAME=$(iw dev | grep ssid | sed -e 's/		ssid //g')
}

getwifiname
# Repeat Checking SSID until connected to wifi
while [ "${WIFINAME}" = "" ]; do
	echo "No active wifi conection"
	sleep 2
	getwifiname
done

echo "Found Wifi Connection:${WIFINAME}"
notify-send $PROGNAME "Starting Actions for Wifi $WIFINAME ..."

# Actions to perform (Explanation at https://github.com/LeSnake04/SnakeScripts/blob/master/WifiAutostart/README.md)
case $WIFINAME in 
	"") 
		
	;;
	*)
		notify-send $PROGNAME "No programms to Start for this wifi"
esac
