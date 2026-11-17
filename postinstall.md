# Guia de Pós-Instalação — Ubuntu e Zorin OS

**Objetivo:** preparar o sistema para uso diário, estudos, programação, desenvolvimento de software, redes, multimídia e manutenção.

---

# 1. Atualização inicial do sistema

Antes de instalar novos programas, atualize os repositórios e os pacotes existentes.

```bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
```

**Para que serve:**

- `apt update`: atualiza a lista de pacotes disponíveis.
- `apt upgrade`: instala atualizações.
- `apt autoremove`: remove dependências que não são mais necessárias.

# 2. Multimídia e codecs

Melhore a compatibilidade com formatos de áudio, vídeo e fontes.

### 2.1 Codecs e fontes

```bash
sudo apt install ubuntu-restricted-extras
```

Esse metapacote reúne componentes adicionais, incluindo:

- Codecs de áudio e vídeo.
- Fontes Microsoft.
- Componentes de reprodução multimídia.
- Suporte adicional a formatos de mídia.

Durante a instalação, pode aparecer uma tela solicitando a aceitação da licença das fontes Microsoft.

### 2.2 Reprodutor multimídia

```bash
sudo apt install vlc ffmpeg
```

| Aplicativo | Finalidade                               |
| ---------- | ---------------------------------------- |
| VLC        | Reprodução de áudio e vídeo              |
| FFmpeg     | Conversão e manipulação de áudio e vídeo |

# 3. Compactação e gerenciamento de arquivos

Instale ferramentas para trabalhar com diferentes formatos de arquivos compactados.

```bash
sudo apt install unzip p7zip-full unrar
```

| Ferramenta | Formatos                         |
| ---------- | -------------------------------- |
| unzip      | ZIP                              |
| p7zip-full | 7Z e outros formatos compatíveis |
| unrar      | RAR                              |

Outros formatos, como TAR, TAR.GZ e TAR.XZ, já possuem suporte por ferramentas tradicionais do Linux.

# 4. Ferramentas essenciais de terminal

Este conjunto é recomendado para praticamente qualquer instalação Linux.

```bash
sudo apt install \
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
```

### Função de cada ferramenta

| Pacote          | Finalidade                              |
| --------------- | --------------------------------------- |
| git             | Controle de versão e GitHub             |
| curl            | Requisições HTTP e transferências       |
| wget            | Downloads pelo terminal                 |
| build-essential | Compiladores GCC/G++ e Make             |
| tree            | Visualização da estrutura de diretórios |
| jq              | Manipulação de arquivos JSON            |
| tmux            | Gerenciamento de sessões de terminal    |
| htop            | Monitoramento de processos              |
| btop            | Monitoramento visual do sistema         |
| ncdu            | Análise do espaço ocupado no disco      |

### Exemplos práticos

Visualizar diretórios:

```bash
tree
```

Formatar um JSON:

```bash
cat arquivo.json | jq
```

Monitorar o sistema:

```bash
btop
```

Verificar o espaço ocupado:

```bash
ncdu /
```

# 5. Ambiente de desenvolvimento

Esta seção reúne ferramentas importantes para desenvolvimento de software.

## 5.1 Python

```bash
sudo apt install \
python3 \
python3-pip \
python3-venv \
python3-dev
```

**Finalidade:**

- Python: interpretador.
- pip: gerenciamento de bibliotecas.
- venv: criação de ambientes virtuais.
- python3-dev: arquivos necessários para compilações e extensões nativas.

Exemplo de criação de ambiente virtual:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

## 5.2 Java

Para projetos Java e Spring Boot:

```bash
sudo apt install openjdk-21-jdk
```

Verificar a instalação:

```bash
java --version
javac --version
```

## 5.3 Git e GitHub

Configure sua identificação:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@example.com"
```

Verifique:

```bash
git config --global --list
```

## 5.4 Node.js

Para desenvolvimento web com Node.js, Express, React e outras tecnologias, instale o Node.js por um método que permita utilizar versões atuais e gerenciar diferentes versões.

Não dependa necessariamente da versão disponibilizada pelo repositório padrão do Ubuntu.

# 6. Docker e containers

Docker é recomendado para trabalhar com aplicações, bancos de dados e ambientes isolados.

Exemplos de utilização:

- FastAPI.
- PostgreSQL.
- Redis.
- Aplicações Node.js.
- Ambientes de desenvolvimento.
- Microsserviços.

**Recomendação:** utilizar Docker Engine e Docker Compose, seguindo o procedimento oficial de instalação para a versão do Ubuntu utilizada.

Evite adicionar repositórios de terceiros sem verificar a compatibilidade.

# 7. Redes e administração Linux

Para estudar redes, diagnosticar conexões e administrar máquinas Linux:

```bash
sudo apt install \
nmap \
net-tools \
dnsutils \
traceroute \
tcpdump \
openssh-client
```

### Função das ferramentas

| Ferramenta     | Finalidade                                |
| -------------- | ----------------------------------------- |
| nmap           | Descoberta e análise de serviços em redes |
| net-tools      | Ferramentas tradicionais, como ifconfig   |
| dnsutils       | Consultas DNS, incluindo dig              |
| traceroute     | Identificação do caminho até um destino   |
| tcpdump        | Captura e análise de tráfego              |
| openssh-client | Acesso remoto por SSH                     |

### Exemplos

Consultar DNS:

```bash
dig google.com
```

Verificar interfaces de rede:

```bash
ip addr
```

Analisar o caminho de uma conexão:

```bash
traceroute google.com
```

Acessar outra máquina:

```bash
ssh usuario@192.168.1.100
```

### Transformar o computador em servidor SSH

Caso queira permitir conexões remotas:

```bash
sudo apt install openssh-server
```

A instalação do servidor SSH é opcional.

# 8. Gerenciamento de discos e partições

### GParted

```bash
sudo apt install gparted
```

Ferramenta gráfica para:

- Criar partições.
- Redimensionar partições.
- Formatar unidades.
- Gerenciar discos.

**Atenção:** operações em partições podem causar perda de dados. Faça backup antes de utilizá-las.

# 9. Backup e recuperação do sistema

### Timeshift

```bash
sudo apt install timeshift
```

O Timeshift permite criar snapshots do sistema e restaurar configurações anteriores.

É especialmente útil antes de:

- Atualizações importantes.
- Alterações no sistema.
- Instalações de drivers.
- Modificações em configurações.

**Importante:** Timeshift não substitui o backup dos seus documentos pessoais. Mantenha cópias separadas dos seus arquivos.

# 10. Aplicativos gráficos

Ferramentas adicionais para criação e edição de conteúdo.

| Aplicativo | Finalidade                        |
| ---------- | --------------------------------- |
| GIMP       | Edição de imagens                 |
| Inkscape   | Edição de imagens vetoriais e SVG |
| OBS Studio | Gravação de tela e transmissão    |
| Kdenlive   | Edição de vídeos                  |

Instalação:

```bash
sudo apt install \
gimp \
inkscape \
obs-studio \
kdenlive
```

# 11. Personalização da interface

Para sistemas baseados no GNOME:

```bash
sudo apt install gnome-tweaks
```

O GNOME Tweaks permite personalizar diferentes aspectos da interface, temas, fontes e extensões.

A disponibilidade e a utilidade dependem do ambiente gráfico utilizado.

# 12. Flatpak e Flathub

Flatpak é uma alternativa para instalar aplicativos fora dos repositórios APT tradicionais.

### 12.1 Instalação

```bash
sudo apt install flatpak
```

### 12.2 Adicionar Flathub

```bash
sudo flatpak remote-add --if-not-exists flathub \
https://flathub.org/repo/flathub.flatpakrepo
```

### 12.3 Exemplo de instalação

```bash
flatpak install flathub com.discordapp.Discord
```

Flatpak pode ser útil quando você precisa de uma versão mais atual de determinado aplicativo ou quando prefere instalar programas isolados do sistema.

---

# 13. Instalação consolidada

Se quiser instalar os principais pacotes de uma vez, utilize o comando abaixo.

**Pacotes essenciais e recomendados:**

```bash
sudo apt update

sudo apt install \
ubuntu-restricted-extras \
vlc \
ffmpeg \
unzip \
p7zip-full \
unrar \
git \
curl \
wget \
build-essential \
tree \
jq \
tmux \
htop \
btop \
ncdu \
python3 \
python3-pip \
python3-venv \
python3-dev \
openjdk-21-jdk \
nmap \
net-tools \
dnsutils \
traceroute \
tcpdump \
openssh-client \
gparted \
timeshift \
gnome-tweaks \
flatpak
```

**Observação:** esse comando reúne ferramentas de diferentes finalidades. Você não precisa instalar todos os pacotes se não utilizar suas funcionalidades. Alguns podem já estar instalados ou ter disponibilidade diferente conforme a versão e os repositórios habilitados.

---

# 14. Ordem recomendada de preparação

| Prioridade | Etapa               | Objetivo                     |
| ---------- | ------------------- | ---------------------------- |
| 1          | Atualização         | Manter o sistema atualizado  |
| 2          | Codecs e multimídia | Compatibilidade com mídia    |
| 3          | Terminal            | Ferramentas básicas          |
| 4          | Desenvolvimento     | Python, Java e Git           |
| 5          | Docker              | Ambientes de desenvolvimento |
| 6          | Redes               | Diagnóstico e administração  |
| 7          | Backup              | Proteção e recuperação       |
| 8          | Interface           | Personalização               |
| 9          | Aplicativos         | Ferramentas adicionais       |

# 15. Considerações finais

Um sistema Linux bem preparado não depende da quantidade de programas instalados, mas de possuir as ferramentas certas para suas necessidades.

A recomendação é começar com o essencial, testar o funcionamento e adicionar ferramentas conforme surgirem novas necessidades.

**Objetivo final:** ter um ambiente Linux preparado para faculdade, programação, desenvolvimento backend, redes, administração de sistemas e uso diário.
