#!/bin/bash

for l in $(kubectl get pods | grep "redis-[[master][slave]]*" | awk '{print $1}'); do echo "$l $(kubectl exec -it "$l" -- redis-cli info replication | grep role)"; done


