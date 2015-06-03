## 
Sample application with Dynamic reconfiguration of the environment variable through Consul
This sample requires the [CoreOS platform installed with Consul, Registrator and Http-Router](https://github.com/mvanholsteijn/coreos-container-platform-as-a-service)

### Usage
```bash
fleetappctl -e dev.env start
while true; do curl paas-monitor.127.0.0.1.xip.io:8080/status ; echo ; sleep 1 ; done &
fleetctl ssh paas-monitor@1 curl -X PUT -d 'DynamicRelease' http://172.18.7.101:8500/v1/kv/paas-monitor/release
```



