# Unifi #
Runs jacobalberty/unifi image for Uniquiti controller.

## Components ##
N/A

## Pre-Requisites ##
Check host volume paths before running the script.
Check project documentation for volumes required. By default, it expects a directory called "contents/unifi" in your logged in user home directory so that data is maintained even after the container is removed. Automatic backup of settings will also be saved in this directory if enabled on the Unifi controller.

# Starting Controller #
There are 2 ways of starting the ccontroller using [docker-compose](https://docs.docker.com/compose) or docker (engine). Compose has more pre-requsites to setup but also should make it easier to manage.

Check the above pre-requisites before continuing below.

## docker-compose ##
Ensure [docker-compose](https://docs.docker.com/compose/install/) is installed. The commands below may require elevated priviledges such as sudo.

1. Go to the cloned directory where the doccker-compose.yml file is.
2. Run the cron.sh file:
   1. ./cron.sh


## docker engine ##
1. Use the start.sh script to perform a docker run command to start the container:
   1. ./start.sh

# Upgrading Controller #
## docker-compose ##
1. Go to the cloned directory where the docker-compose.yml file is.
2. Run the cron.sh file:
   1. ./cron.sh

## docker engine ##
1. Stop and remove container:
   1. docker stop unifi && docker rm unifi
3. Restart the container which should rebuild from fresh because the previous stop removes the container:
   1. ./start.sh

# Automatic Update #
Use a task scheduler like cron to run either the cron.sh or the start.sh to stop and remove existing container then rebuild and restart the container. If there is a new version of the Unifi controller available then this will pull the latest images and run them. Example cron entry to restart every week on Friday at 3am using docker-compose:
```
0 3 * * 5 cron.sh
```
or docker
```
0 3 * * 5 start.sh
```
