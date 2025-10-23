#!/bin/bash
dos2unix "$0"
source /var/xigify/config
rm -rf /var/www/$XIGIFYENV/weather/*
rm -rf /var/tempbuild/code/weather/*


