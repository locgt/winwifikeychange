@echo off
set /p wifiID=Enter the name of the wifi profile: 
set /p wifikey=Enter the new wifi key for %wifiID%: 
netsh wlan set profileparameter name="%wifiID%" keyMaterial="%wifikey%"
echo Current Wifi Key set to:
netsh wlan show profiles "%wifiID%" key=clear
pause
