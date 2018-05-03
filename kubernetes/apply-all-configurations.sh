#!/bin/bash
clear

echo "Applying all defined configurations to Kubernetes."

cd config/

./apply-config.sh

cd ../tools/

./apply-config.sh
