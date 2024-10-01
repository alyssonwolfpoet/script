#!/bin/bash

# Script para corrigir o APT

echo "Atualizando a lista de pacotes..."
sudo apt update

echo "Corrigindo pacotes quebrados..."
sudo apt --fix-broken install -y

echo "Reinstalando pacotes problemáticos..."
sudo dpkg --configure -a

echo "Removendo pacotes não necessários..."
sudo apt autoremove -y

echo "Limpando o cache do APT..."
sudo apt clean

echo "Todos os passos foram concluídos!"