#!/bin/bash
source /var/xigify/config
cd /var/tempbuild/code/weather
rm -rf deploy
mkdir deploy
dotnet publish -c Release -o deploy
cd ..
source /var/xigify/config
sudo rm -rf /var/www/$XIGIFYENV/weather
sudo mkdir -p /var/www/$XIGIFYENV/weather
sudo cp -a /var/tempbuild/code/weather/deploy/. /var/www/$XIGIFYENV/weather/
sudo cp -a /var/tempbuild/code/weather/systemd/Xigify.weather.$XIGIFYENV.service /etc/systemd/system
sudo cp -a /var/www/$XIGIFYENV/weather/weather.$XIGIFYENV.appsettings.json /var/www/$XIGIFYENV/weather/weather.appsettings.json 
sudo systemctl daemon-reload
sudo rm -rf /var/tempbuild/code/weather