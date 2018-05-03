#!/bin/bash
echo "Deleting all defined deployments and services from Kubernetes."

kubectl delete -f services/ --namespace management

kubectl delete -f deployments/ --namespace management

kubectl delete -f volumes/ --namespace management
