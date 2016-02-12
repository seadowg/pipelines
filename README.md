# pipelines

A collection of example Concourse CI pipelines that hopefully allows you to explore and learn about setting up and using Concourse.

## Using

To start a Concourse server locally that will run the example pipelines you will need to make sure you have both [Vagrant](https://www.vagrantup.com/) and [Virtual Box](https://www.virtualbox.org/) installed. Then simply run:

```bash
./setup.sh
```

This will boot a Vagrant managed virtual machine running Concourse and add all the example pipelines contained in the `pipelines` directory to it. You can then view Concourse by visiting [192.168.100.4:8080](192.168.100.4:8080).
