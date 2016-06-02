#!/bin/bash

docker build -t webapp .
docker run -it webapp
