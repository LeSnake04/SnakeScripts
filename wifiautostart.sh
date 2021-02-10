#!/bin/bash -v
#
# WifiAutostart by LeSnake04
# Version 1.0 
#
# Code under GPL 3 License: https://www.gnu.org/licenses/gpl-3.0.html



PROGNAME="WifiAutostart"

nmcli n on
getwifiname (){
	WIFINAME=$(iw dev | grep ssid | sed -e 's/		ssid //g')
}

getwifiname
while [ "${WIFINAME}" = "" ]; do
	echo "No active wifi conection"
	sleep 2
	getwifiname
done
echo "Found Wifi Connection:${WIFINAME}"
notify-send $PROGNAME "Starting Actions for Wifi $WIFINAME ..."

case $WIFINAME in 
	"belkin54g")
		nextcloud&
		indicator-kdeconnect&
		thunderbird&
		signal-desktop --use-tray-icon --start-in-tray &

	;;
	*)
		notify-send $PROGNAME "No programms to Start for this wifi"
esac
