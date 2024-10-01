#!/bin/bash

# Remover NVIDIA
echo "Removendo drivers e pacotes da NVIDIA..."
sudo apt-get purge nvidia* -y
sudo apt-get autoremove --purge -y
sudo rm -rf /etc/X11/xorg.conf
sudo rm -rf /usr/local/cuda*
sudo rm -rf /var/lib/nvidia-installer

# Remover Docker
echo "Removendo Docker..."
sudo apt-get purge docker-ce docker-ce-cli containerd.io -y
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo rm /etc/docker/daemon.json

# Remover todos os pacotes relacionados ao Docker
echo "Removendo pacotes relacionados ao Docker..."
sudo apt-get autoremove --purge -y

# Atualizar repositórios
echo "Atualizando repositórios..."
sudo apt-get update

# Reinstalar NVIDIA
echo "Reinstalando drivers da NVIDIA..."
sudo apt-get install nvidia-driver-525 -y # Altere a versão conforme necessário

# Reinstalar Docker
echo "Reinstalando Docker..."
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Reiniciar o sistema
echo "Sistema reiniciando para aplicar mudanças..."
sudo reboot