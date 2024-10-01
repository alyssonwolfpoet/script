#!/bin/bash

# Script para resetar o APT

echo "Zerando o APT..."

# Remover caches e listas
sudo rm -rf /var/lib/apt/lists/*
sudo rm -rf /var/cache/apt/*
sudo rm -rf /etc/apt/sources.list.d/*

# Reinstalar o APT
sudo apt-get install --reinstall apt

# Recriar o arquivo sources.list
echo "Criando novo arquivo sources.list..."
echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -cs) main restricted universe multiverse" | sudo tee /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -cs)-updates main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -cs)-security main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

# Atualizar a lista de pacotes
echo "Atualizando a lista de pacotes..."
sudo apt update

echo "APT resetado com sucesso!"