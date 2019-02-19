# intel-atom-iso #

The *intel-atom-iso* project is designed to be used in conjunction with the Linuxium isorespin.sh to build a customized Ubuntu installation ISO for Mini-PCs using the Intel Atom chip.  It consists of:
 1. additional WiFi driver (brcmfmac43455) for the Intel Atom;
 1. scripts to correct the problem with audio out on HDMI;
 1. fix-volumekeys.sh - a script to correct the volume up/down/mute key handling;
 1. install-xForge.sh - a script to install xForge software.
 1. lubuntu-isorespin.tpl - a template for the isorespin.sh script by Ian Morrison (a.k.a. Linuxium)

## Usage ##
To use the isorespin.sh script and this template, follow these steps:
 1. Download the iso for Lubuntu 16.04 from [here](http://cdimage.ubuntu.com/lubuntu/releases/16.04.5/release/) - choose a 64-bit installer;
 1. Download the isorespin.sh script from [linuxium.au](http://www.linuxium.com.au/how-tos), preferably to a directory on your path such as /usr/local/bin;
 1. cd to the directory where this repository was cloned and do the following:

    1. `isorespin.sh -t lubuntu-isorespin.tpl -i lubuntu-16.04.5-desktop-amd64.iso`;
    1. Insert a USB storage stick;
    1. `dd if=linuxium-atom-lubuntu-16.04.5-desktop-amd64.iso bs=4M status=progress`;

You can now boot from the LiveUSB stick to run and install Lubuntu.  The Lubuntu installation will have the following additions:
 1. ssh
 1. WiFi driver for the Atom x5-Z8350 processor
 1. Correction for HDMI Audio

Once *Lubuntu* has been installed, login as the user that you created during installation and run the following scripts (if you like - they are optional):
 1. fix-volumekeys.sh - fixes the lubuntu configuration so that the Volume Up/Down/Mute keys on a media keyboard work correctly;
 1. install-xForge.sh - installs the web-languageForge software and its prerequisites.  The usage for install-xForge.sh is:

   `install-xForge.sh [--repo=<web-languageForge-repo] [--saaz] [--access-point]`
   
   The options are defined as:

      `--repo`: specify a repository to be used for the web-languageForge software.  If an alternative repo is not specified, the [SIL repository](https://github.com/sillsdev/web-languageforge.git) is used.

      `--saaz`: a shortcut for `--repo=grady@10.0.0.32:/home/grady/projects/sil/xForge/web-languageforge` because I'm lazy.

      `--access-point`: will run the ansible playbook to setup a WiFi access point on the target device.  Note that this playbook is currently not available in the master branch of the SIL repository.
