#!/bin/bash

docker run -d --name lil-bobby-tables \
    -e MYSQL_PASSWORD=123 \
    -e MYSQL_ROOT_PASSWORD=123 \
    -e MYSQL_DATABASE=users \
    -e MYSQL_USER=webapp \
    -p 3306:3306 mysql:latest

