#!/bin/bash
echo "Applying all defined base configurations to Kubernetes."

kubectl apply -f ./namespaces/

kubectl apply -f ./volumes/
