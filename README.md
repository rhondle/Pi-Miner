# Pi-Miner

### A simple, guided configuration tool for a Raspberry Pi based Zeus/Gaw Scrypt miner

#### Supports
* Zeus & Gaw Scrypt miners
* Fury/Blizzard*
* Black Widow*
* Falcon
* War Machine

(*) Tested

#### Requirements:
* Raspberry Pi + Rasbian
* build environment
* cgminer or bfgminer (compiled with Zeus support)
* screen
* whiptail (installed by default)

#### Installation Instructions:
1. Download and install Raspbian to an SD card
2. Update (`sudo apt-get update && apt-get upgrade`)
3. Install build environment
 * `sudo apt-get install screen autoconf autogen libtool uthash-dev libjansson-dev libcurl4-openssl-dev libusb-dev libncurses-dev git git-core vim -y`
4. Download source and compile cgminer or bfgminer with zeus support
 * cgminer: `--enable-scrypt --enable-zeus`
 * bfgminer: `--enable-scrypt --disable-other-drivers --enable-icarus --enable-zeusminer`
5. Copy `miner-setup` and `start-miner.sh` to `/usr/local/bin/`
6. Add an entry to root's crontab (see `crontab.txt`) if you want the miner to automatically start on boot.
7. Connect a supported miner and run `sudo miner-setup` to configure.
8. Reboot, then run `sudo screen -r` to confirm the miner(s) are running properly. (http://bit.ly/1xTZdVk for instructions on using screen)







