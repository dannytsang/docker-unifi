#!/bin/bash
sudo docker-compose pull
sudo docker-compose stop
sudo docker-compose rm -f
sudo docker-compose up -d
