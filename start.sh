#!/bin/bash
sudo docker run --restart=always --net=host -d -v ~/contents/unifi/data:/var/lib/unifi:rw -v /var/log:/var/log --name unifi jacobalberty/unifi:latest 
sudo docker ps
