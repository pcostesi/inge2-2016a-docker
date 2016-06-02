#!/bin/bash

docker run -it \
    -p "8080:8080" \
    --link lil-bobby-tables:db \
    -e DATABASE_HOST=db \
    webapp
