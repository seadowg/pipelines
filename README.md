# pipelines

A collection of example Concourse CI pipelines that hopefully allows you to explore and learn about setting up and using Concourse.

## Using

To start a Concourse server locally that will run the example pipelines you will need to make sure you have both [Vagrant](https://www.vagrantup.com/) and [Virtual Box](https://www.virtualbox.org/) installed. Then simply run:

```bash
./setup.sh
```

This will boot a Vagrant managed virtual machine running Concourse and add all the example pipelines contained in the `pipelines` directory to it. You can then view Concourse by visiting [192.168.100.4:8080](192.168.100.4:8080).

Some pipelines will require a little extra configuration to fully work. Steps to achieve this are detailed below in each pipelines description.

** Hint **: `setup.sh` is idempotent so you can re-run it after
changing any of the `pipeline.yml` files to quicky reconfigure everything.

## Pipelines

### jvm-test-deploy-pws

This pipeline is a 2 step pipeline that first tests and the deploys (if the tests pass) a small Java based "hello world" web app.

This pipeline will deploy the app [PWS](https://run.pivotal.io) but it requires credentials to do so. If you navigate to the `pipeline.yml` within the `jvm-test-deploy-pws` directory you can add your PWS credentials to the `source` node of the `pws` resource. You can then reconfigure the pipeline on the Concourse server:

```bash
./fly set-pipeline -p jvm-test-deploy-pws -c pipelines/jvm-test-deploy-pws/pipeline.yml
```

You can also point the deployment at a different CF installation if you wish by editing the `api` field of the `source` node in the `pws` resource.
