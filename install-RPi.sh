#!/usr/bin/bash
# -*- coding: utf-8 -*-
# shell-scripts

#### install RPi-repo
cd /home/pi
git clone https://github.com/getarun/RPi
cd RPi
chmod +x ./install.sh
sudo ./install.sh
