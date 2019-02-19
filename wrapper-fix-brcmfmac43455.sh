#!/bin/bash

cd /usr/local/bin
if [ -f brcmfmac43455-sdio.txt ] ; then
  mv brcmfmac43455-sdio.txt /lib/firmware/brcm
else
  echo "No brcmfmac43455-sdio.txt file to move.\n"
fi
rm -f wrapper-fix-brcmfmac43455.sh
