#!/bin/bash

echo "################################################"
echo "Restarting docker swarm..."
echo "################################################"
vagrant ssh dev -c "cd projects; ./rebuild-and-restart.sh"
echo "################################################"
echo "Docker swarm setup complete. Gathering logs..."
echo "################################################"
./get-logs.sh kafkaProject_consumatoriTriciclo  2 ../../results/triciclo.log
./get-logs.sh kafkaProject_consumatoriPalloncino 1 ../../results/palloncino.log
