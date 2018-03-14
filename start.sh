#!/bin/bash
sudo docker run --restart=always --net=host -d -e TZ="Europe/London" -e RUNAS_UID0="false" -e UNIFI_UID="1000" -e UNIFI_GID="1000" -v ~/contents/unifi/data:/unifi/data:rw -v /var/log:/unifi/log --name unifi jacobalberty/unifi:latest 
sudo docker ps
