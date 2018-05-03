#!/bin/bash
echo "Applying all defined deployments and services to Kubernetes."

kubectl apply -f volumes/ --namespace management

kubectl apply -f deployments/ --namespace management

kubectl apply -f services/ --namespace management
