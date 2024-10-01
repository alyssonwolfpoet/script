#!/bin/bash

# Script para zerar o APT

echo "CUIDADO: Este script removerá todos os pacotes instalados!"
read -p "Você tem certeza que deseja continuar? (s/n): " confirm

if [[ $confirm != "s" ]]; then
    echo "Operação cancelada."
    exit 1
fi

# Atualizar a lista de pacotes
echo "Atualizando a lista de pacotes..."
sudo apt update

# Remover todos os pacotes instalados (com cuidado)
echo "Removendo todos os pacotes instalados..."
sudo apt-get remove --purge $(dpkg --get-selections | awk '{print $1}')

# Limpar o cache do APT
echo "Limpando o cache do APT..."
sudo apt clean

# Remover pacotes desnecessários
echo "Removendo pacotes desnecessários..."
sudo apt autoremove -y

echo "APT zerado com sucesso!"

