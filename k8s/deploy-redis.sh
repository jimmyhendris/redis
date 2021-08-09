#!/bin/bash

kubectl delete deployment.apps redis-master
kubectl delete deployment.apps redis-slave-1
kubectl delete deployment.apps redis-slave-2

kubectl apply -f redis-master.yaml
kubectl apply -f redis-slave-1.yaml
kubectl apply -f redis-slave-2.yaml