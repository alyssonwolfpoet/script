#!/usr/bin/env bash
#
# Pós-instalação para Ubuntu e Zorin OS
# Instala ferramentas de multimídia, terminal, desenvolvimento e administração.
#
# Uso:
#   chmod +x setup-linux.sh
#   ./setup-linux.sh
#
# O script solicita confirmação antes dos grupos opcionais.
# Docker e Node.js não são instalados automaticamente: recomenda-se configurar
# os repositórios/métodos oficiais para obter versões adequadas.

set -Eeuo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

log()  { printf "${BLUE}[INFO]${RESET} %s\n" "$*"; }
ok()   { printf "${GREEN}[OK]${RESET} %s\n" "$*"; }
warn() { printf "${YELLOW}[ATENÇÃO]${RESET} %s\n" "$*"; }
die()  { printf "${RED}[ERRO]${RESET} %s\n" "$*" >&2; exit 1; }

trap 'die "Ocorreu um erro na linha $LINENO. Verifique a mensagem acima."' ERR

if [[ "${EUID}" -eq 0 ]]; then
    die "Não execute este script como root. Execute como usuário normal; ele usará sudo quando necessário."
fi

if ! command -v apt-get >/dev/null 2>&1; then
    die "Este script foi feito para Ubuntu, Zorin OS e distribuições derivadas que utilizam APT."
fi

if ! command -v sudo >/dev/null 2>&1; then
    die "O sudo não está instalado. Instale/configure o sudo antes de continuar."
fi

if [[ -r /etc/os-release ]]; then
    # shellcheck disable=SC1091
    . /etc/os-release
    log "Sistema detectado: ${PRETTY_NAME:-Linux}"
fi

read -r -p "Deseja continuar com a preparação do sistema? [s/N] " answer
[[ "${answer,,}" == "s" || "${answer,,}" == "sim" ]] || exit 0

log "Solicitando permissões administrativas..."
sudo -v

log "Atualizando a lista de pacotes..."
sudo apt-get update

install_group() {
    local title="$1"
    shift
    local requested=("$@")
    local available=()
    local missing=()
    local pkg

    log "Preparando: ${title}"

    for pkg in "${requested[@]}"; do
        if apt-cache show "$pkg" >/dev/null 2>&1; then
            available+=("$pkg")
        else
            missing+=("$pkg")
        fi
    done

    if ((${#missing[@]})); then
        warn "Pacotes não encontrados nos repositórios habilitados: ${missing[*]}"
        warn "Eles serão ignorados. Se necessário, habilite os repositórios apropriados."
    fi

    if ((${#available[@]})); then
        sudo apt-get install -y "${available[@]}"
        ok "${title} instalado."
    else
        warn "Nenhum pacote disponível para o grupo: ${title}"
    fi
}

ask_group() {
    local title="$1"
    shift
    local answer
    read -r -p "Instalar ${title}? [s/N] " answer
    if [[ "${answer,,}" == "s" || "${answer,,}" == "sim" ]]; then
        install_group "$title" "$@"
    else
        log "Grupo ignorado: ${title}"
    fi
}

# 1. Ferramentas básicas
install_group "ferramentas essenciais de terminal" \
    git curl wget build-essential tree jq tmux htop btop ncdu unzip

# 2. Multimídia e compactação
ask_group "codecs, VLC, FFmpeg e suporte a arquivos compactados" \
    ubuntu-restricted-extras vlc ffmpeg p7zip-full unrar

# 3. Desenvolvimento
ask_group "ambiente Python" \
    python3 python3-pip python3-venv python3-dev

ask_group "Java OpenJDK 21" \
    openjdk-21-jdk

# 4. Redes e acesso remoto
ask_group "ferramentas de redes e SSH" \
    nmap net-tools dnsutils traceroute tcpdump openssh-client

# 5. Administração do sistema
ask_group "ferramentas de discos, backup e personalização" \
    gparted timeshift gnome-tweaks

# 6. Aplicativos gráficos
ask_group "GIMP, Inkscape, OBS Studio e Kdenlive" \
    gimp inkscape obs-studio kdenlive

# 7. Flatpak e Flathub
read -r -p "Instalar Flatpak e habilitar o Flathub? [s/N] " answer
if [[ "${answer,,}" == "s" || "${answer,,}" == "sim" ]]; then
    install_group "Flatpak" flatpak
    if command -v flatpak >/dev/null 2>&1; then
        log "Configurando o repositório Flathub..."
        sudo flatpak remote-add --if-not-exists flathub \
            https://flathub.org/repo/flathub.flatpakrepo
        ok "Flathub configurado."
    fi
fi

# Limpeza final
log "Removendo dependências que não são mais necessárias..."
sudo apt-get autoremove -y

log "Concluindo..."
sudo apt-get upgrade -y

printf "\n"
ok "Processo de pós-instalação concluído!"
printf "\n"
printf "Verificações úteis:\n"
printf "  git --version\n"
printf "  python3 --version\n"
printf "  java --version\n"
printf "  btop\n"
printf "\n"
warn "Reinicie o computador se alguma atualização ou instalação solicitar."
warn "Docker e Node.js ficaram de fora para serem instalados separadamente por métodos oficiais."
