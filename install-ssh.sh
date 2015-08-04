#!/bin/bash
#-*- coding: utf-8 -*-
echo "installing ssh-software"
sudo apt-get install openssh-server openssh-client ssh-agent
ssh-keygen
echo "created key pair ~/.ssh/id_rsa"
ssh-agent -s
ssh-add ~/.ssh/id_rsa
# ssh-copy-id getarun@23.45.56.78
echo "testing connection"
ssh -T git@github.com
