#!/bin/bash
sudo docker run --restart=always --net=host -d -e TZ="Europe/London" -v ~/contents/unifi/data:/var/lib/unifi:rw -v /var/log:/var/log --name unifi jacobalberty/unifi:latest 
sudo docker ps
