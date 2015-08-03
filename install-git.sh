#!/bin/bash
-*- coding: utf-8 -*-

sudo apt-get install git
mkdir /home/pi/git-working-dir
cd /home/pi/git-working-dir
git config --global user.name "Zimmer-pi"
git config --global user.email zimmer@jzo.de
git config --global --add merge.ff false
