#!/bin/bash
# -*- ecoding: UTF-8 -*-
# shell-scripts

#### install mysql-connector
cd /home/pi
git clone https://github.com/getarun/mysql-connector-2.0.4
cd mysql-connector-2.0.4
sudo pyhton setup.py install
