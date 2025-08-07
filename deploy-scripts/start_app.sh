#!/bin/bash
dos2unix "$0"
source /var/xigify/config
sudo systemctl restart Xigify.weather.$XIGIFYENV.service