#!/bin/bash

DRV_NAME=88x2bu
DRV_VERSION=5.8.7.1
DRV_DIR="$(pwd)"

if [[ $EUID -ne 0 ]]; then
  echo "You must run this installation script with superuser priviliges."
  echo "Try \"sudo ./dkms-remove.sh\"" 2>&1
  exit 1
fi

dkms remove ${DRV_NAME}/${DRV_VERSION} --all
rm -rf /usr/src/${DRV_NAME}-${DRV_VERSION}

RESULT=$?
if [[ "$RESULT" != "0" ]]; then
  echo "An error occurred while running dkms remove." 2>&1
else
  echo "dkms remove was successful."
fi

exit $RESULT
