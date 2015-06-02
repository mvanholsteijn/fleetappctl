## SYNOPSIS
	fleetappctl [-d deployment-descriptor] [-e environment-file] (generate | list | start | stop | destroy)

## OPTIONS
	-d deployment-descriptor	the deployment descriptor, defaults to deployit-manifest.xml
	-e environment-file		the file with environment variables, specific to a deployment
	generate			a deployment descriptor based on the content of the directory
	list				executes a fleetctl list-units for units in the deployment descriptor
	start				all the units in the deployment descriptor
	stop				all the units in the deployment descriptor
	destroy				all the units in the deployment descriptor
	
## DESCRIPTION
fleetappctl allows you to manage a set of CoreOS fleet unit files as a single application. You can start, stop and deploy
the application.

### start
The start command will start all units in the order as they appear in the deployment descriptor. If you have a template
unit file, you can specify the number of instances you want to start.

start is idempotent, so you may call start multiple times. Start will bring the deployment inline with your descriptor.

If the unit file has changed with respect to the deployed unit file, the corresponding instances will be stopped and restarted with the new
unit file. If you have a template file, the instances of the template file will be upgraded one by one.

## stop
will stop all units in the reverse order as they appear in the deployment descriptor.

## list
will list all units in the deployment descriptor.

## destroy
will destroy all units in the reverse order as they appear in the deployment descriptor.

## generate
Generates a deployment descriptor (deployit-manifest.xml) from all the unit files found in your directory. If a file is a template
file, by default the number of instances to start is set to 2, to support rolling upgrades.

The unit files will be inspected for variable references. Variable names are enclosed by double curly bracket {{variable-name}}. If
these are found, they will be replaced with an actual value as specified in the environment file (command line option -e).

## deployment descriptor
The deployment descriptor is an XML file matching with the following structure:

```
  /udm.DeploymentPackage/deployables	- root element containing individual deployable units
  /udm.DeploymentPackage/fleet.UnitConfigurationFile*	- one or more fleet unit files.
```
a fleet.UnitConfigurationFile element must have the following attributes:
```
  @name			- logical name of the unit file
  @file			- filename of the unit
```

a fleet.UnitConfigurationFile element can have the following elements:
```
  scanPlaceholders	- boolean indicating the file should be scanned for placeholders , defaults to true.
  startUnit		- boolean indicating the file should be started, defaults to true.
  numberOfInstances	- integer indicating the number of instances to start, defaults to 2 for template files.
```

