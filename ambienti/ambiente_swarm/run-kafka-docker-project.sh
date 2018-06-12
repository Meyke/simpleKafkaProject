#!/bin/bash

echo "################################################"
echo "Running vagrant..."
echo "################################################"
vagrant up
echo "################################################"
echo "Vagrant setup compete. Running docker swarm..."
echo "################################################"
vagrant ssh dev -c "cd projects; ./build-and-start.sh"
echo "################################################"
echo "Docker swarm setup complete. Gathering logs..."
echo "################################################"
./get-logs.sh kafkaProject_consumatoriTriciclo  2 ../../results/triciclo.log
./get-logs.sh kafkaProject_consumatoriPalloncino 1 ../../results/palloncino.log
