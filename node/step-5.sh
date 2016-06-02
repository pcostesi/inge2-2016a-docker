#!/bin/bash

docker build -t node-base .

docker run -it node-base
