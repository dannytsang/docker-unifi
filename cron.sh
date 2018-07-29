#!/bin/bash
sudo /usr/local/bin/docker-compose pull
sudo /usr/local/bin/docker-compose down -v
sudo /usr/local/bin/docker-compose up -d
