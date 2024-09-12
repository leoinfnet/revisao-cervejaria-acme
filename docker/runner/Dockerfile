FROM ubuntu:latest
ARG TOKEN=A6RYTNXP2CK334SMIWI2PGTG4MRKC
RUN apt-get update && apt-get install -y curl
#RUN apt-get update && apt-get install -y \
#    curl \
#    git \
#    unzip \
#    libssl-dev \
#    libffi-dev \
#    python3 \
#    python3-pip \
#    python3-venv \
#    && rm -rf /var/lib/apt/lists/*

ENV RUNNER_ALLOW_RUNASROOT=1
RUN curl -o actions-runner-linux-x64-2.319.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.319.1/actions-runner-linux-x64-2.319.1.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.319.1.tar.gz
RUN ./config.sh --url https://github.com/leoinfnet/revisao-cervejaria-acme --token A6RYTNXP2CK334SMIWI2PGTG4MRKC
CMD "./run.sh"