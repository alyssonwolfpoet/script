#!/bin/bash

#Atualização inicial do sistema
echo "=============================="
echo "Atualização inicial do sistema"
echo "=============================="
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

#Multimídia e codecs
echo "=============================="
echo "Multimídia e codecs"
echo "=============================="
sudo apt install ubuntu-restricted-extras -y

#Reprodutor multimídia
echo "=============================="
echo "Multimídia e codecs"
echo "=============================="
sudo apt install vlc ffmpeg -y

#Compactação e gerenciamento de arquivos
echo "=============================="
echo "Compactação e gerenciamento de arquivos"
echo "=============================="
sudo apt install unzip p7zip-full unrar -y

#Ferramentas essenciais de terminal
echo "=============================="
echo "Ferramentas essenciais de terminal"
echo "=============================="
sudo apt install git curl wget build-essential tree jq tmux htop btop ncdu neofetch -y
sudo apt install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libffi-dev liblzma-dev python3-venv xz-utils tk-dev -y


#Ambiente de desenvolvimento
echo "=============================="
echo "Ambiente de desenvolvimento"
echo "=============================="
sudo apt install python3 python3-pip python3-venv python3-dev python3-tk tk-dev -y
sudo apt install nodejs npm -y
# Verifique a versão do Node.js:
node -v # Deve exibir "v26.13.0".
# Verificar a versão do npm:
npm -v # Deve imprimir "11.20.0".
wget -c https://download.oracle.com/java/27/latest/jdk-27_linux-x64_bin.deb -O java.deb
sudo dpkg -i java.deb
rm java.deb

#Redes e administração Linux
echo "=============================="
echo "Redes e administração Linux"
echo "=============================="
sudo apt install nmap net-tools dnsutils traceroute tcpdump openssh-client -y

#Gerenciamento de discos e partições
echo "=============================="
echo "Gerenciamento de discos e partições"
echo "=============================="
sudo apt install gparted -y

#Backup e recuperação do sistema
echo "=============================="
echo "Backup e recuperação do sistema"
echo "=============================="
sudo apt install timeshift -y

#Aplicativos gráficos
echo "=============================="
echo "Aplicativos gráficos"
echo "=============================="
sudo apt install gimp inkscape obs-studio kdenlive -y

#Personalização da interface
echo "=============================="
echo "Personalização da interface"
echo "=============================="
sudo apt install gnome-tweaks -y

#Flatpak e Flathub
echo "=============================="
echo "Flatpak e Flathub"
echo "=============================="
sudo apt install flatpak -y
apt-get install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


#Finalizando
echo "=============================="
echo "Finalizando"
echo "=============================="
# ==========================================
# LIMPEZA DO SISTEMA
# ==========================================

sudo apt autoremove -y
sudo apt autoclean -y
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y
sudo snap refresh
sudo flatpak update
echo "Pós-instalação concluída!"
