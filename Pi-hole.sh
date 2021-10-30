#!/bin/bash

curl -sSL https://install.pi-hole.net | bash

echo "Use this IP address in your devices' DNS configruation:"

hostname -I

echo "Find out more on:"
echo "https://docs.pi-hole.net/main/post-install/"

# Resources: 
# # https://docs.pi-hole.net/main/basic-install/
# # https://github.com/pi-hole/pi-hole/#one-step-automated-install