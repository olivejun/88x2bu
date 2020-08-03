# 88x2bu

# Linux Driver for the RealTek RTL8812BU and RTL8822BU Chipsets.

Driver version 5.8.7.1, 2019-11-19, from Realtek. I have tested the driver on Ubuntu 20.04, Linux Mint 20 and Linux Mint 19.3. I saw clean compiles on all three tests. Basic function tests on a rtl8812bu chipset based USB device were successful.

# Basic installation for Ubuntu 20.04 or Linux Mint 20:

Download the zip file of this repository to home (or other if you like.)

Unzip the zip file. A folder named 88x2bu will be created.

From a terminal (aka. command line) in the 88x2bu folder (where the zip file was unzipped):

$ cd 88x2bu

$ sudo apt-get install build-essential

$ make

$ sudo make install

$ sudo reboot

# To-do:

- add dkms support (help appreciated)

