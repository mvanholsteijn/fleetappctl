## composite application
sample composite fleet application 
This sample requires the [CoreOS platform installed with Consul, Registrator and Http-Router](https://github.com/mvanholsteijn/coreos-container-platform-as-a-service)

### Start the application
```bash
fleetappctl start
```

### Stop the application
```bash
fleetappctl  stop
```

### list the application
```bash
fleetappctl  list
```

### start the application and destroy
```bash
fleetappctl  start
fleetappctl  destroy
fleetappctl  list
```
