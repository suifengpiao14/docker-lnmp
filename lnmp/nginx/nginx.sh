#!/bin/bash

function build(){
    docker build --tag suifeng/nginx -f nginx/Dockerfile .    
}

function run(){
    docker run -d --name nginx -p 80:80 -v /var/www/html:/usr/local/nginx/html --link php7:php7 -it suifeng/nginx    
}

function start(){
    docker start nginx
}

function stop(){
    docker stop nginx
}

case $1 in;
    build)
    build
    ;;
    run)
    run
    ;;
    start)
    start
    ;;
    stop)
    stop
    ;;
    *)
    echo "please use build|run|start|stop command"
