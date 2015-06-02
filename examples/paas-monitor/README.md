## unit file with placeholder reference
sample unit file with placeholder reference.
This sample requires  the CoreOS platform installed with Consul, Registrator and Http-Router [https://github.com/mvanholsteijn/coreos-container-platform-as-a-service]

### Usage
```bash
fleetappctl -e dev.env start
open http://paas-monitor.127.0.0.1.xip.io:8080
```

### Updating environment
Keep on watching your monitor, and execute the following command. You will see a rolling
upgrade in effect.
```bash
sed -i -e 's/release=.*/release=V2/g'
fleetappctl -e dev.env start
```


