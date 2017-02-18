# cloudshell_lcd_bitcoin
ODROID-XU4 Cloudshell LCD Informations for Bitcoin Node

Modified from Original Code https://github.com/mdrjr/cloudshell_lcd/

Installation:

download/clone this wherever you want to and type `sudo make install`.

`sudo make uninstall` to uninstall.

Requirements:`curl` package for getting external IP and bitcoin price ticker, `jq` for parsing JSON from bitcoin-cli commands.

Note 1: You need some knowledge about shell scripting because i'm just a noob at programming shell scripts and you might need to modify some variables like `NETIF`, `SATA`, `REFRESH`, `TOR_IP` and bitcoin datadir PATH in `bitcoin-cli` commands, which means you have to check the code by yourself anyway.

Node 2: I recommend not to run this script while syncing blocks because `bitcoin-cli` commands takes forever while validating blocks. Meanwhile, you can use the original script or just comment out `bitcoin-cli` related codes.

# Modifications from the original code

* Added several bitcoin-cli commands including cURL commands for bitcoin price ticker (Change to your path of bitcoin datadir and api urls for ticker if needed)

* Added Tor IP (Change to your path of bitcoin hidden service if needed or just comment out)

* Added usage of memswap

* Modified free memory calculation using MemAvailable rather than MemFree because it is more accuarate especially when swapping of memory is possible (Also changed to 'free -m' from 'cat /proc/meminfo' because somehow MemAvailable doesn't shows up with 'cat /proc/meminfo', but with 'free' command with my Odroid computer) 

* Modified the default `REFRESH` value to 300 from 3 seconds 

* Modified the url for asking external IP

* Modified tx/rx calculation in kB/s rather than in MB/s because it almost always shows 0 MB/s except when syncing blocks and it was just boring. 

* Fixed tx/rx calculation as it seems tx and rx are in reverse in the original code.

# License

Note that the original code doesn't have any licenses, which generally means you need permission to do everything. 

I just forked and published because it seems they don't care as long as I see the official Odroid forums. You might need their permission for commercial use or something. If they agree, this code is released under CC0.
