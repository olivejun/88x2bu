### 88x2bu

### Linux Driver for the RealTek RTL8812BU and RTL8822BU Chipsets.

Driver version 5.8.7.1 - 2019-11-19.

### Supported Features:

- IEEE 802.11 b/g/n/ac WiFi compliant
- 802.1x, WEP, WPA TKIP and WPA2 AES/Mixed mode for PSK and TLS (Radius)
- WPA3-SAE Personal
- WPS - PIN and PBC Methods
- IEEE 802.11b/g/n/ac Client mode
- Wireless security for WEP, WPA TKIP and WPA2 AES PSK
- Site survey scan and manual connect
- WPA/WPA2 TLS client
- Power saving mode
- Monitor mode
- Soft AP mode
- WiFi-Direct

### Officially Supported Kernels:

- Linux (kernel 2.6.24 ~ 5.3) Note: tested on kernel 5.4 with no problems noted so far)

### Tested distributions:

- Ubuntu 20.04
- Linux Mint 20
- Linux Mint 19.3

### Tested Hardware:

- EDUP WiFi Adapter 1300Mbps USB 3.0 High Gain Wireless Adapter
  ( https://www.amazon.com/gp/product/B07Q56K68T/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1&pldnSite=1 )

### Basic installation for Ubuntu 20.04 or Linux Mint 20:

Download the zip file (green "Code" button) from this repository to /home (or other if you like.)

Extract the zip file. A folder named "88x2bu-master" will be created.

From a terminal (aka. command line interface):
```
$ cd 88x2bu-master
```
```
$ sudo apt-get install build-essential (does not appear to be needed on Ubuntu 20.04)
```
```
$ make
```
```
$ sudo make install
```
```
$ sudo reboot
```

Note: You will need to repeat the above from "$ make" on down if the kernal is upgraded. To avoid having to manually recompile after kernel upgrades, see DKMS below.

### DKMS
This driver can be installed using [DKMS]. This is a system which will automatically recompile and install a kernel module when a new kernel gets installed or updated. To make use of DKMS, install the `dkms` package, which on Debian (based) systems such as Ubuntu and Linux Mint is done like this:
```
$ sudo apt-get install dkms
```

### Installation of the Driver
Open a terminal in the directory with the source code and execute the following command:
```
$ sudo ./dkms-install.sh
```

### Removal of the Driver
Open a terminal in the directory with the source code and execute the following command:
```
$ sudo ./dkms-remove.sh
```

### To-Do:

- test
