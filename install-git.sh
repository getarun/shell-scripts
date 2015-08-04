#!/bin/bash
-*- coding: utf-8 -*-

sudo apt-get install git
mkdir /home/pi/git-working-dir
cd /home/pi/git-working-dir

git pull http://github.com/getarun/git-init
chmod +x ./git-init/install.sh
sh ./git-init/install.sh
