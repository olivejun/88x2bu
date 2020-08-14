#!/bin/bash

DRV_NAME=88x2bu
DRV_VERSION=5.8.7.1
DRV_DIR="$(pwd)"

if [[ $EUID -ne 0 ]]; then
  echo "You must run this installation script with superuser priviliges."
  echo "Try \"sudo ./dkms-install.sh\"" 2>&1
  exit 1
fi

echo "Driver name: " ${DRV_NAME}
echo "Driver version: " ${DRV_VERSION}

echo "Copying driver to: /usr/src/${DRV_NAME}-${DRV_VERSION}" 
cp -r $(pwd) /usr/src/${DRV_NAME}-${DRV_VERSION}

echo "dkms installation in progress..."
dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
dkms install -m ${DRV_NAME} -v ${DRV_VERSION}

RESULT=$?
if [[ "$RESULT" != "0" ]]; then
  echo "An error occurred while running dkms install." 2>&1
else
  echo "dkms install was successful."
fi

exit $RESULT
