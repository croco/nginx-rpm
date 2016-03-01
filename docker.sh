#!/bin/bash

REPO="nginx-compile"
TAG="0.1"

if [ "$1" == "" ]; then
    echo "usage([build|run|push])"
    exit
fi

case "$1" in
    "build" )
        docker build --rm -t ${REPO}:${TAG} .
        ;;

    "run" )
        docker run -it \
            -v `pwd`/opt:/opt \
            ${REPO}:${TAG} \
            bash /opt/app/do.sh
        ;;

    "push" )
        docker push ${REPO}:${TAG}
        ;;

esac
