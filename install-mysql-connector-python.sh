#!/bin/bash
# -*- coding: utf-8 -*-
# shell-scripts

#### install mysql-connector
cd /home/pi/git-working-dir
git clone https://github.com/getarun/mysql-connector-python
cd mysql-connector-python
sudo phyton ./setup.py install
cd ..
