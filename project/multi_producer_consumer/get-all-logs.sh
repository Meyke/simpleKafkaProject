rm -rf logs
echo "delete old logs"
mkdir logs
./get-logs.sh kafkaProject_filtro  1 ./logs/filtro.log
./get-logs.sh kafkaProject_consumatoriBicicletta  2 ./logs/consumatoriBicicletta.log
./get-logs.sh kafkaProject_consumatoriTriciclo 1 ./logs/consumatoriTriciclo.log
