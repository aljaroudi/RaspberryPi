#!/bin/bash

echo "Select an option"
echo "  1) AirPlay: stream music wirelessly to any speaker"
echo "  2) Pi-hole: block ads on any device network-wide"
echo "  a) all" 

read n
case $n in
  1) sh AirPlay.sh;;
  2) sh Pi-hole.sh;;
  *) sh AirPlay.sh && Pi-hole.sh;;
esac