#!/bin/bash

##########################################################
# This script installs Spotify and the codec libraries
# that are needed to play DVDs.  These packages are not
# required for Languge Forge but may be useful if the device
# is to be used for streaming media or playing DVDs as well.
##########################################################


### Install Spotify
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client

### Install DVD Codecs, etc.
# 5. Get the DVD library package
sudo apt install libdvd-pkg

# 6. run reconfigure to get all dependencies
sudo dpkg-reconfigure libdvd-pkg

### Install VLC for playing DVDs
# 7. Install VLC
sudo apt-get install vlc
