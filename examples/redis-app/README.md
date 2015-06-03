## composite application
sample composite fleet application 
This sample requires the [CoreOS platform installed with Consul, Registrator and Http-Router](https://github.com/mvanholsteijn/coreos-container-platform-as-a-service)



```bash
### Generate a deployment descriptor
fleetappctl generate

### Start the application
fleetappctl start

### Stop the application
fleetappctl  stop

### list the application
fleetappctl  list

### start the application and destroy
fleetappctl  start
fleetappctl  destroy
fleetappctl  list
```
