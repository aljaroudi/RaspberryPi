# RaspberryPi

My RPi tools setup

## TL;DR

Run the following to install anything in this repository:

```bash
# If you haven't, clone the repo.
git clone https://github.com/aljaroudi/RaspberryPi.git rpi && cd rpi
# This will prompt you to select the tool(s) you want to install.
sh setup.sh
# You may skip the rest of this file
```

## [Airplay Server](https://github.com/mikebrady/shairport-sync)

This lets you stream music from any of your eligible Apple devices to any speaker that can take AUX or HDMI input with AirPlay or AirPlay 2. This allows instant connections without Bluetooth manual pairing and a higher quality audio than what is possible with Bluetooth. This also means support for Apple Loseless Audio Codec ([ALAC](https://support.apple.com/en-us/HT212183))\*.

Steps:

1. On your WiFi-enabled Raspberry Pi, run:

```bash
sh -c "$(curl -fsSL https://raw.github.com/aljaroudi/RaspberryPi/master/AirPlay.sh)"
```

3. Connect the Raspberry Pi to an external speaker via AUX or HDMI.
4. When selecting the audio output on your Apple device, you should see a new device called Raspberry Pi by default.

## [Pi-hole](https://pi-hole.net/)

Block ads (or really anything) on any device connected to your network.

Steps:

1. Install on a Raspberry Pi ([alt. methods](https://docs.pi-hole.net/main/basic-install/)):

```bash
curl -sSL https://install.pi-hole.net | bash
```

2. Configure your Raspberry Pi as a DNS server for other devices:

   - [Linux, macOS, and Windows](https://discourse.pi-hole.net/t/how-do-i-configure-my-devices-to-use-pi-hole-as-their-dns-server/245#setup-11)
   - iOS and iPadOS: `Settings ➜ Wi-Fi ➜ (i) ➜ Configure DNS ➜ Manual (with only your Pi's IP address)`

3. Optional: Find and add some [adlists](https://firebog.net/).

[Prerequisites](https://docs.pi-hole.net/main/prerequisites)
