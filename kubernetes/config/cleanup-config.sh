#!/bin/bash
echo "Deleting all defined base configurations from Kubernetes."

kubectl delete -f ./volumes/

kubectl delete -f ./namespaces/
