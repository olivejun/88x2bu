# 88x2bu

# Linux Driver for the RealTek RTL8812BU and RTL8822BU Chipsets.

Driver version 5.8.7.1 - 2019-11-19.

# Features:

- IEEE 802.11 b/g/n/ac WiFi compliant
- 802.1x, WEP, WPA TKIP andWPA2 AES/Mixed mode for PSK and TLS (Radius)
- WPA3-SAE Personal
- WPS - PIN and PBC Methods
- IEEE 802.11b/g/n/ac Client mode
- Support wireless security for WEP, WPA TKIP and WPA2 AES PSK
- Support site survey scan and manual connect
- Support WPA/WPA2 TLS client
- Support power saving mode
- Soft AP mode
- WiFi-Direct

# Officially supported kernels:

- Linux (kernel 2.6.24 ~ 5.3) 
(Note: tested on kernel 5.4 with no problems noted so far)

# Tested distributions:

- Ubuntu 20.04
- Linux Mint 20
- Linux Mint 19.3

# Tested Hardware:

- rtl8812bu chipset based USB device

# Basic installation for Ubuntu 20.04 or Linux Mint 20:

Download the zip file of this repository to /home (or other if you like.)

Unzip the zip file. A folder named 88x2bu-master will be created.

From a terminal (aka. command line):

$ cd 88x2bu-master

$ sudo apt-get install build-essential (does not appear to be needed on Ubuntu 20.04)

$ make

$ sudo make install

$ sudo reboot

# To-do:

- add dkms support (initial dkms support has been added but needs to be tested)

