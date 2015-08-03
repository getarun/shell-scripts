#!/bin/bash
# -*- coding: utf-8 -*-
# shell-scripts

#### install RPi-repo
mkdir /home/pi/git-working-dir
cd /home/pi/git-working-dir
git clone https://github.com/getarun/RPi
cd RPi
chmod +x ./install.sh
sudo ./install.sh
