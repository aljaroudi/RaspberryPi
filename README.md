# RaspberryPi

My RPi tools setup

## Airplay Server

This lets you stream music from any of your eligible Apple devices to any speaker that can take AUX or HDMI input with AirPlay or AirPlay 2. This allows instant connections without Bluetooth manual pairing and a higher quality audio than what is possible with Bluetooth. This also means support for Apple Loseless Audio Codec ([ALAC](https://support.apple.com/en-us/HT212183))\*.

Steps:

1. On your WiFi-enabled Raspberry Pi, run:
```bash
sh -c "$(curl -fsSL https://raw.github.com/aljaroudi/RaspberryPi/master/AirPlay.sh)"
```
3. Connect the Raspberry Pi to an external speaker via AUX or HDMI.
4. When selecting the audio output on your Apple device, you should see a new device called Raspberry Pi by default.
