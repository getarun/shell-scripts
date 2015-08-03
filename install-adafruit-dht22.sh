#!/usr/bin/bash
-*- coding: utf-8 -*-

#### install Adafruit library for DHT22 sensors
cd /home/pi/git-working-dir
git clone https://github.com/getarun/Adafruit_Python_DHT
cd Adafruit_Python_DHT
sudo phyton ./setup.py install
cd ..
