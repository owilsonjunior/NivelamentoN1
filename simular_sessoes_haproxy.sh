#!/bin/bash

# Número de sessões simultâneas
SESSIONS=10
# Tempo entre cada requisição (em segundos)
INTERVAL=0.5
# Número de ciclos por sessão
CYCLES=20
# URL do HAProxy
URL=http://localhost:8080

echo "Simulando $SESSIONS sessões para $URL com $CYCLES ciclos cada..."

for i in $(seq 1 $SESSIONS); do
  (
    for j in $(seq 1 $CYCLES); do
      curl -s $URL > /dev/null
      sleep $INTERVAL
    done
    echo "Sessão $i finalizada"
  ) &
done

wait
echo "Todas as sessões foram concluídas."
