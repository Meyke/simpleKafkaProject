#!/bin/bash

echo "################################################"
echo "Stopping vagrant..."
echo "################################################"
vagrant halt
./run-kafka-docker-project.sh
