# WifiAutostostart

## What does this Script do?
This Bash Script checks the Name of the current Wifi (enableling networking if needed) and Executes defined actions.
___
## How to edit actions
To edit the actions you have to edit the script:

### 1. **Navigate to the `case` section at the bottom the Script**
### 2. **get the ssid of your wifi, if you don't already know it**

To get the ssid of your current wifi, execute this command in a terminal:
```bash
iw dev | grep ssid | sed -e 's/		ssid //g'
```
### 3. **Make a section in the `case` with the ssid of you network Connection**

Then Make a statement with the I
```bash
"ssid" )
```
You can even add a second ssid, where the same actions get performed
```bash
"ssid" | "ssid2" )
```
### 4. **configure the actions**
Finally add the applications you want to start. Don't forget to add a '&' at the end of each command
```bash
"ssid" | "ssid2" )
    telegram-desktop&
;;
```
### **5. Add the script to the Autostart of your Desktop**

Don't forget to disable Autostarts of the applications you included in the scripts

____

## **Example of a configuration**
```bash
"belkin54g")
	nextcloud&
	indicator-kdeconnect&
	thunderbird&
	signal-desktop --use-tray-icon --start-in-tray &
;;
```
