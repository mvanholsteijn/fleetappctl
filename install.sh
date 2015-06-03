#!/bin/sh
if cmp {/usr/local,.}/bin/fleetappctl 2> /dev/null ; then
	echo "INFO: fleetappctl already installed in /usr/local/bin" >&2
else
	echo "INFO: copying fleetappctl to /usr/local/bin" >&2
	cp bin/fleetappctl /usr/local/bin
fi

if cmp {/usr/local,.}/bin/consul.KeyValuePairs 2> /dev/null ; then
	echo "INFO: consul.KeyValuePairs already installed in /usr/local/bin" >&2
else
	echo "INFO: copying consul.KeyValuePairs to /usr/local/bin" >&2
	cp bin/consul.KeyValuePairs /usr/local/bin
fi
