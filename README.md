# Docker

## Step 1

	docker run -it busybox

---

## Step 2

    docker rm lil-bobby-tables
    docker run -d --name lil-bobby-tables -e MYSQL_PASSWORD=123 -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=users -e MYSQL_USER=webapp -p 3306:3306 mysql:latest

---

## Step 3

	docker ps

---

## Step 4

	docker exec -it lil-bobby-tables /bin/bash

## Step 5

    docker build -t node-base .
    docker run -it node-base

---

## Step 6

    docker build -t webapp .
    docker run -it webapp

---

## Step 7

    docker run -it webapp -p "8080:8080" --link lil-bobby-tables:db -e DATABASE_HOST=db

---

## Step 8

    docker-compose build  
    docker-compose up
    # docker-compose down
