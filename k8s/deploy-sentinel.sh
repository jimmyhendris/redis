#!/bin/bash

kubectl delete deployment.apps sentinel-1
kubectl delete deployment.apps sentinel-2
kubectl delete deployment.apps sentinel-3

kubectl apply -f sentinel-1.yaml
kubectl apply -f sentinel-2.yaml
kubectl apply -f sentinel-3.yaml