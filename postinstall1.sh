
#!/bin/bash

# ==========================================
# ATUALIZAÇÃO DO SISTEMA
# ==========================================

sudo apt update
sudo apt upgrade -y


# ==========================================
# MULTIMÍDIA E CODECS
# ==========================================

sudo apt install -y \
    ubuntu-restricted-extras \
    vlc \
    ffmpeg


# ==========================================
# COMPACTAÇÃO E ARQUIVOS
# ==========================================

sudo apt install -y \
    unzip \
    p7zip-full \
    unrar


# ==========================================
# FERRAMENTAS DE TERMINAL
# ==========================================

sudo apt install -y \
    git \
    curl \
    wget \
    build-essential \
    tree \
    jq \
    tmux \
    htop \
    btop \
    ncdu


# ==========================================
# DESENVOLVIMENTO PYTHON
# ==========================================

sudo apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev


# ==========================================
# DESENVOLVIMENTO JAVA
# ==========================================

# sudo apt install -y \
#     openjdk-21-jdk


# ==========================================
# REDES E ADMINISTRAÇÃO
# ==========================================

sudo apt install -y \
    nmap \
    net-tools \
    dnsutils \
    traceroute \
    tcpdump \
    openssh-client


# ==========================================
# DISCOS E BACKUP
# ==========================================

sudo apt install -y \
    gparted \
    timeshift


# ==========================================
# APLICATIVOS GRÁFICOS
# ==========================================

sudo apt install -y \
    gimp \
    inkscape \
    obs-studio \
    kdenlive


# ==========================================
# PERSONALIZAÇÃO DO SISTEMA
# ==========================================

sudo apt install -y \
    gnome-tweaks


# ==========================================
# FLATPAK E FLATHUB
# ==========================================

sudo apt install -y flatpak

sudo flatpak remote-add --system --if-not-exists flathub \
    https://flathub.org/repo/flathub.flatpakrepo


# ==========================================
# LIMPEZA DO SISTEMA
# ==========================================

sudo apt autoremove -y
sudo apt autoclean


# ==========================================
# FINALIZAÇÃO
# ==========================================

echo "Pós-instalação concluída!"
