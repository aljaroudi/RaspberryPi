#!/bin/bash

# Install dependencies
sudo apt-get install -y autoconf automake avahi-daemon build-essential git libasound2-dev libavahi-client-dev libconfig-dev libdaemon-dev libpopt-dev libssl-dev libtool xmltoman

# Install AirPlay server. This installs the development version, which supports AirPlay 2. To install the stable version, remove the --branch tag from the command below.
git clone https://github.com/mikebrady/shairport-sync.git shairport --single-branch --branch development

cd shairport

# Compile
autoreconf -i -f

./configure --with-alsa --with-avahi --with-ssl=openssl --with-systemd --with-metadata

make

sudo make install 

# Start the server
sudo service shairport-sync start

# Set as a system service so it starts automatically on reboot
sudo systemctl enable shairport-sync

# Prevent wifi dropouts which may mess up your audio streaming.
sudo echo "wireless-power off" >> /etc/network/interfaces

# Set volume to 100%
amixer set Headphone -- 100%
# where Headphone is the name of the audio ouptut by default.
# To find out your output's name:
# sudo amixer | grep -o -P "(?<=').*(?=')"
# More info about your output:
# sudo amixer

# Resources:
# # https://www.jeffreythompson.org/blog/2020/04/29/build-an-airplay-receiver-using-raspberry-pi/
# # https://appcodelabs.com/7-easy-steps-to-apple-airplay-on-raspberry-pi
# # https://github.com/mikebrady/shairport-sync
