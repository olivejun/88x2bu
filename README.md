# 88x2bu

# Linux Driver for the RealTek RTL8812BU and RTL8822BU Chipsets.

Driver version 5.8.7.1 - 2019-11-19.

# Features:

- WPA3-SAE Personal
- Soft AP mode
- WiFi-Direct
- Power saving mode
- IEEE 802.11 b/g/n/ac
- Monitor mode

# Tested systems:

- Ubuntu 20.04
- Linux Mint 20
- Linux Mint 19.3

- Device test: rtl8812bu chipset based USB device

# Basic installation for Ubuntu 20.04 or Linux Mint 20:

Download the zip file of this repository to home (or other if you like.)

Unzip the zip file. A folder named 88x2bu-master will be created.

From a terminal (aka. command line) in the 88x2bu-master folder (where the zip file was unzipped):

$ sudo apt-get install build-essential

$ make

$ sudo make install

$ sudo reboot

# To-do:

- add dkms support (initial dkms support has been added but needs to be tested)

