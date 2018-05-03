#!/bin/bash
clear

echo "Deleting all defined configurations from Kubernetes."

cd tools/

./cleanup-config.sh

cd ../config/

./cleanup-config.sh
