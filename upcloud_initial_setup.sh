#!/bin/bash
# Ejecutar los comandos en modo no-interactivo 
export DEBIAN_FRONTEND=noninteractive

# Actualizando la cache de los repos
apt-get update 

# Instalando dependencias
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# agregando docker gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

# agregando repositorio docker
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# instalando docker + docker-compose
apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose


