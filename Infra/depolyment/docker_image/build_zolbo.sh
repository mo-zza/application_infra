#!/usr/bin/env bash

git clone https://github.com/alchemilab/ZOLBO_BACKEND.git

echo "What is zolbo API version : " 
read version

# build docker file:
sudo docker build -t zoblo-flask:${version} .

rm -rf ZOLBO_BACKEND