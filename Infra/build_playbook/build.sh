#!/bin/bash

echo "> clone latest zolbo api"
git clone https://github.com/alchemilab/ZOLBO_BACKEND.git

VERSION=`git tag | grep latest`
LATEST=${VERSION#:latest}
export LATEST

# build docker file:
echo "> build Docker Image"
docker build -t zoblo-flask:${LATEST} .

rm -rf ZOLBO_BACKEND