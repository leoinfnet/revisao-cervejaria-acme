#!/bin/bash

# Definir variáveis de ambiente
RUNNER_NAME=${RUNNER_NAME:-default-runner}
RUNNER_TOKEN=${RUNNER_TOKEN}
RUNNER_URL=${RUNNER_URL}
RUNNER_LABELS=${RUNNER_LABELS:-default}

# Mudar para o diretório do runner
cd /actions-runner

# Registrar o runner
./config.sh \
    --url $RUNNER_URL \
    --token $RUNNER_TOKEN \
    --name $RUNNER_NAME \
    --labels $RUNNER_LABELS

# Iniciar o runner
./run.sh
