#!/bin/bash
sed -i 's/#load-module module-alsa-sink/load-module module-alsa-sink device=hw:0,2/' /etc/pulse/default.pa
sed -i '/### Automatically load driver modules depending on the hardware available/,/.endif/ s/^/# LINUXIUM #/' /etc/pulse/default.pa
