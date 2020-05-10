#!/bin/bash

echo "127.0.1.1 $(hostname -s)" > /etc/hosts
cd /usr/local/bin
./fix-hdmipleaudio.sh
sed -i '$d' /etc/hosts
rm -f fix-hdmipleaudio.sh wrapper-fix-hdmipleaudio.sh
