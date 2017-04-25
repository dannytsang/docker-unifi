# Unifi #
Runs jacobalberty/unifi image for Uniquiti controller.

## Components ##
N/A

## Pre-Requisites ##
Check host volume paths before running the script.
Check project documentation for volumes required.

TODO:
change from host volumes to data volumes.

# Starting Controller #
There are 2 ways of starting the ccontroller using [docker-compose](https://docs.docker.com/compose) or docker (engine). Compose has more pre-requsites to setup but also should make it easier to manage.

Check the above pre-requisites before continuing below.

## docker-compose ##
Ensure [docker-compose](https://docs.docker.com/compose/install/) is installed. The commands below may require elevated priviledges such as sudo.

1. Go to the cloned directory where the doccker-compose.yml file is.
2. Start the container using the command:
   1. docker-compose up -d


## docker engine ##
1. Use the start.sh script to perform a docker run command to start the container:
   1. ./start.sh

# Upgrading Controller #
Restarting the container doesn't always pick up the latest version. This is usually due to cache or pre-built images of the container so that containers can re-use and / or restart very quickly but doesn't always check for updates. Follow the below if you're trying to upgrade to the latest version.

## docker-compose ##
1. Go to the cloned directory where the docker-compose.yml file is.
2. Stop the container using the command:
   1. docker-compose up --build -d

## docker engine ##
1. Stop and remove container:
   1. docker stop unifi && docker rm unifi
3. Restart the container which should rebuild from fresh because the previous stop removes the container:
   1. ./start.sh
