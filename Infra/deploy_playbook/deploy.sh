#!/bin/bash

echo "> check minikube status"
KUBE=`minikube status | grep host`
STATUS=${KUBE#host: }

if [ ${STATUS} == "Stopped" ]
then
    echo "> minikube start"
    minikube start
    nohup minikube dashboard &
elif [ ${STATUS} == "Running" ]
then
    echo "> minikube running"
fi

echo "> deploy kubernetes deployment"
kubectl apply -f zolbo-api-deployment.yaml

echo "> deploy kubernetes service"
kubectl apply -f zolbo-api-service.yaml