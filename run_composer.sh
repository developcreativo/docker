#!/bin/bash

sudo systemctl stop mysql.service apache2.service
docker-compose up -d nginx mysql phpmyadmin redis workspace
