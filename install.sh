#!/bin/bash

steamcmd_dir="$HOME/steamcmd"

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386

mkdir $steamcmd_dir
cd $steamcmd_dir
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
