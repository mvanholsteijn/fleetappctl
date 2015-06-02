# fleetappctl
Command line utility for the deployment of applications to CoreOS consisting of a collection of fleet files

## Install
To install the utility in /usr/local/bin, type the following commands.

```bash
git clone https://github.com/mvanholsteijn/fleetappctl.git
cd fleetappctl
./install.sh
```

## Prerequisites
* XMLStarlet installed
* fleetctl installed


## Manual page
Checkout [fleetappctl.md](./doc/fleetappctl.md) for the manual page.

##  Examples
* [composite application](examples/redis-app/README.md)
* [rolling upgrade with placeholder replacement](examples/paas-monitor/README.md)

	
