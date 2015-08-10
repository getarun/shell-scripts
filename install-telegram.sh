#!/bin/bash

echo "installiere Telegram aus getarun/tg"
cd /home/pi/git-working/dir
git clone https://github.com/getarun/tg
cd tg
./configure
make
sudo make install
