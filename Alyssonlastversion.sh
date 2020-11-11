#!/bin/bash
#autor: Alysson Sousa
#data: 09/11/2020

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 09/11/2020'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
#funções principais
  atualizacao(){
    echo "=========================================="
    echo "*---Atualização do Sistema Operacional---*"
    echo "=========================================="
    sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y
    sudo snap refresh
  }
  atualizar(){
    echo -e "\n"
    contador=0
    while true; do
        echo "confirmação para Atualização"
        echo "Selecione uma opção:"
        echo "1 - Confirmar a Atualização"
        echo "0 - voltar ao menu principal"
        echo -n "opção:"
        read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        1)
          echo -e "\n"
          atualizacao
        ;;
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"
    done
  }
  instalar_tudo(){
    echo -e "\n"
    contador=0
    while true; do
      echo "confirmação para instalar todos os programas"
      echo "Selecione uma opção:"
      echo "1 - Confirmar a Instalação"
      echo "0 - voltar ao menu principal"
      echo -n "opção:"
      read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        1)
          echo -e "\n"
          atualizacao
          java
          eclipse
          netbeans
          python_pycharm
          packettracer
          star_uml 
          evolus_pencil
          project_libre 
          vscode
          virtualbox
          mysql_workbench
          postgresql
          phpmyadmin
          ocsinventory-agent
          apache2
          php7.4
          traceroute
          pgadmin3
          ruby
          docker_docker.io
          gnome-panel
          wakeonlan
          etherwake
          nmap
          ssh
          nbtscan
          net-tools
          flashplugin-installer
          postgis
          octave
          gtkterm
          kmag
          editor_vim
          Scilab
          Gimp
          wireshark
          brackets
          Grub_Customizer
          systemback
          sublimetext
          Logisim 
        ;;
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"
    done
  }
  instalar_individualmente(){
    echo -e "\n"
    contador=0
    while true; do
      echo "Instalar Individualmente"
      echo "Selecione uma opção:"
      echo "
        01º java
        02º eclipse
        03º netbeans
        04º python&pycharm
        05º packettracer
        06º star_uml 
        07º evolus_pencil
        08º project_libre 
        09º vscode
        10º virtualbox
        11º mysql&workbench
        12º postgresql
        13º phpmyadmin
        14º ocsinventory-agent
        15º apache2
        16º php7.4
        17º traceroute
        18º pgadmin3
        19º ruby
        20º docker&docker.io
        21º gnome-panel
        22º wakeonlan
        23º etherwake
        24º nmap
        25º ssh
        26º nbtscan
        27º net-tools
        28º flashplugin-installer
        29º postgis
        30º octave
        31º gtkterm
        32º kmag
        33º editor_vim
        34º Scilab
        35º Gimp
        36º wireshark
        37º brackets
        38º Grub_Customizer
        39º systemback
        40º sublimetext
        41º Logisim"
      echo "0 - voltar ao menu principal"
      echo -n "opção:"
      read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        01)
          echo -e "\n"
          java
        ;;
        02)
          echo -e "\n"
          eclipse
        ;;
        03)
          echo -e "\n"
          netbeans
        ;;
        04)
          echo -e "\n"
          python_pycharm
        ;;
        05)
          echo -e "\n"
          packettracer
        ;;
        06)
          echo -e "\n"
          star_uml
        ;;
        07)
          echo -e "\n"
          evolus_pencil
        ;;
        08)
          echo -e "\n"
          project_libre
        ;;
        09)
          echo -e "\n"
          vscode
        ;;
        10)
          echo -e "\n"
          virtualbox
        ;;
        11)
          echo -e "\n"
          mysql_workbench
        ;;
        12)
          echo -e "\n"
          postgresql
        ;;
        13)
          echo -e "\n"
          phpmyadmin
        ;;
        14)
          echo -e "\n"
          ocsinventory-agent
        ;;
        15)
          echo -e "\n"
          apache2
        ;;
        16)
          echo -e "\n"
          php7.4
        ;;
        17)
          echo -e "\n"
          traceroute
        ;;
        18)
          echo -e "\n"
          pgadmin3
        ;;
        19)
          echo -e "\n"
          ruby
        ;;
        20)
          echo -e "\n"
          docker_docker.io
        ;;
        21)
          echo -e "\n"
          gnome-panel
        ;;
        22)
          echo -e "\n"
          wakeonlan
        ;;
        23)
          echo -e "\n"
          etherwake
        ;;
        24)
          echo -e "\n"
          nmap
        ;;
        25)
          echo -e "\n"
          ssh
        ;;
        26)
          echo -e "\n"
          nbtscan
        ;;
        27)
          echo -e "\n"
          net-tools
        ;;
        28)
          echo -e "\n"
          flashplugin-installer
        ;;
        29)
          echo -e "\n"
          postgis
        ;;
        30)
          echo -e "\n"
          octave
        ;;
        31)
          echo -e "\n"
          gtkterm
        ;;
        32)
          echo -e "\n"
          kmag
        ;;
        33)
          echo -e "\n"
          editor_vim
        ;;
        34)
          echo -e "\n"
          Scilab
        ;;
        35)
          echo -e "\n"
          Gimp
        ;;
        36)
          echo -e "\n"
          wireshark
        ;;
        37)
          echo -e "\n"
          brackets
        ;;
        38)
          echo -e "\n"
          Grub_Customizer
        ;;
        39)
          echo -e "\n"
          systemback
        ;;
        40)
          echo -e "\n"
          sublimetext
        ;;
        41)
          echo -e "\n"
          Logisim
        ;;
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"

    done

  }
  desistalar_tudo(){
    echo -e "\n"
    contador=0
    while true; do
      echo "confirmação para desistalar todos os programas"
      echo "Selecione uma opção:"
      echo "1 - Confirmar a Desistalação"
      echo "0 - voltar ao menu principal"
      echo -n "opção:"
      read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        1)
          echo -e "\n"
          #01 java
          d-java
          #02 eclipse
          d-eclipse
          #03º netbeans
          d-netbeans
          #04º python&pycharm
          d-python_pycharm
          #05º packettracer
          d-packettracer
          #06º star_uml
          d-star_uml
          #07º evolus_pencil
          d-evolus_pencil
          #08º project_libre 
          d-project_libre
          #09º vscode
          d-vscode
          #10º virtualbox
          d-virtualbox
          #11º mysql&workbench
          d-mysql_workbench
          #12º postgresql
          d-postgresql
          #13º phpmyadmin
          d-phpmyadmin
          #14º ocsinventory-agent
          d-ocsinventory-agent
          #15º apache2
          d-apache2
          #16º php7.0&php_extras
          d-php7.4
          #17º traceroute
          d-traceroute
          #18º pgadmin3
          d-pgadmin3
          #19º ruby
          d-ruby
          #20º docker&docker.io
          d-docker_docker.io
          #21º gnome-panel
          d-gnome-panel
          #22º wakeonlan
          d-wakeonlan
          #23º etherwake
          d-etherwake
          #24º nmap
          d-nmap
          #25º ssh
          d-ssh
          #26º nbtscan
          d-nbtscan
          #27º net-tools
          d-net-tools
          #28º flashplugin-installer
          d-flashplugin-installer
          #29º postgis
          d-postgis
          #30º octave
          d-octave
          #31º gtkterm
          d-gtkterm
          #32º kmag
          d-kmag
          #33º editor_vim
          d-editor_vim
          #34º Scilab
          d-Scilab
          #35º Gimp
          d-Gimp
          #36º wireshark
          d-wireshark
          #37º brackets
          d-brackets
          #38º Grub_Customizer
          d-Grub_Customizer
          #39º systemback
          d-systemback
          #40º sublimetext
          d-sublimetext
          #41º Logisim
          d-Logisim
        ;;
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"
    done
  }
  desistalar_individualmente(){
    echo -e "\n"
    contador=0
    while true; do
      echo "desistalar individalmente"
      echo "Selecione uma opção:"
      echo "
        01º java
        02º eclipse
        03º netbeans
        04º python&pycharm
        05º packettracer
        06º star_uml 
        07º evolus_pencil
        08º project_libre 
        09º vscode
        10º virtualbox
        11º mysql&workbench
        12º postgresql
        13º phpmyadmin
        14º ocsinventory-agent
        15º apache2
        16º php7.4
        17º traceroute
        18º pgadmin3
        19º ruby
        20º docker&docker.io
        21º gnome-panel
        22º wakeonlan
        23º etherwake
        24º nmap
        25º ssh
        26º nbtscan
        27º net-tools
        28º flashplugin-installer
        29º postgis
        30º octave
        31º gtkterm
        32º kmag
        33º editor_vim
        34º Scilab
        35º Gimp
        36º wireshark
        37º brackets
        38º Grub_Customizer
        39º systemback
        40º sublimetext
        41º Logisim"
      echo "0 - voltar ao menu principal"
      echo -n "opção:"
      read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        01)
          echo -e "\n"
          #01 java
          d-java
        ;;
        02)
          echo -e "\n"
          #02 eclipse
          d-eclipse
        ;;
        03)
          echo -e "\n"
          #03º netbeans
          d-netbeans
        ;;
        04)
          echo -e "\n"
          #04º python&pycharm
          d-python_pycharm
        ;;
        05)
          echo -e "\n"
          #05º packettracer
          d-packettracer
        ;;
        06)
          echo -e "\n"
          #06º star_uml
          d-star_uml
        ;;
        07)
          echo -e "\n"
          #07º evolus_pencil
          d-evolus_pencil
        ;;
        08)
          echo -e "\n"
          #08º project_libre 
          d-project_libre
        ;;
        09)
          echo -e "\n"
          #09º vscode
          d-vscode
        ;;
        10)
          echo -e "\n"
          #10º virtualbox
          d-virtualbox
        ;;
        11)
          echo -e "\n"
          #11º mysql&workbench
          d-mysql_workbench
        ;;
        12)
          echo -e "\n"
          #12º postgresql
          d-postgresql
        ;;
        13)
          echo -e "\n"
          #13º phpmyadmin
          d-phpmyadmin
        ;;
        14)
          echo -e "\n"
          #14º ocsinventory-agent
          d-ocsinventory-agent
        ;;
        15)
          echo -e "\n"
          #15º apache2
          d-apache2
        ;;
        16)
          echo -e "\n"
          #16º php7.0&php_extras
          d-php7.4
        ;;
        17)
          echo -e "\n"
          #17º traceroute
          d-traceroute
        ;;
        18)
          echo -e "\n"
          #18º pgadmin3
          d-pgadmin3
        ;;
        19)
          echo -e "\n"
          #19º ruby
          d-ruby
        ;;
        20)
          echo -e "\n"
          #20º docker&docker.io
          d-docker&docker.io
        ;;
        21)
          echo -e "\n"
          #21º gnome-panel
          d-gnome-panel
        ;;
        22)
          echo -e "\n"
          #22º wakeonlan
          d-wakeonlan
        ;;
        23)
          echo -e "\n"
          #23º etherwake
          d-etherwake
        ;;
        24)
          echo -e "\n"
          #24º nmap
          d-nmap
        ;;
        25)
          echo -e "\n"
          #25º ssh
          d-ssh
        ;;
        26)
          echo -e "\n"
          #26º nbtscan
          d-nbtscan
        ;;
        27)
          echo -e "\n"
          #27º net-tools
          d-net-tools
        ;;
        28)
          echo -e "\n"
          #28º flashplugin-installer
          d-flashplugin-installer
        ;;
        29)
          echo -e "\n"
          #29º postgis
          d-postgis
        ;;
        30)
          echo -e "\n"
          #30º octave
          d-octave
        ;;
        31)
          echo -e "\n"
          #31º gtkterm
          d-gtkterm
        ;;
        32)
          echo -e "\n"
          #32º kmag
          d-kmag
        ;;
        33)
          echo -e "\n"
          #33º editor_vim
          d-editor_vim
        ;;
        34)
          echo -e "\n"
          #34º Scilab
          d-Scilab
        ;;
        35)
          echo -e "\n"
          #35º Gimp
          d-Gimp
        ;;
        36)
          echo -e "\n"
          #36º wireshark
          d-wireshark
        ;;
        37)
          echo -e "\n"
          #37º brackets
          d-brackets
        ;;
        38)
          echo -e "\n"
          #38º Grub_Customizer
          d-Grub_Customizer
        ;;
        39)
          echo -e "\n"
          #39º systemback
          d-systemback
        ;;
        40)
          echo -e "\n"
          #40º sublimetext
          d-sublimetext
        ;;
        41)
          echo -e "\n"
          #41º Logisim
          d-Logisim
        ;;    
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"
    done
  }
  lista_programas(){
    echo -e "\n"
    contador=0
    while true; do
      echo "lista de Programas"
      echo "Selecione uma opção:"
      echo "1 - ver lista"
      echo "0 - voltar ao menu principal"
      echo -n "opção:"
      read opcao;

      case $opcao in
        0)
          clear
          break
        ;;
        1)
          echo -e "\n" 
          echo -e "=====Programas a serem instalados=====\n
          Atualização do Sistema Operacional \n
          01º java
          02º eclipse
          03º netbeans
          04º python&pycharm
          05º packettracer
          06º star_uml 
          07º evolus_pencil
          08º project_libre 
          09º vscode
          10º virtualbox
          11º mysql&workbench
          12º postgresql
          13º phpmyadmin
          14º ocsinventory-agent
          15º apache2
          16º php7.4
          17º traceroute
          18º pgadmin3
          19º ruby
          20º docker&docker.io
          21º gnome-panel
          22º wakeonlan
          23º etherwake
          24º nmap
          25º ssh
          26º nbtscan
          27º net-tools
          28º flashplugin-installer
          29º postgis
          30º octave
          31º gtkterm
          32º kmag
          33º editor_vim
          34º Scilab
          35º Gimp
          36º wireshark
          37º brackets
          38º Grub_Customizer
          39º systemback
          40º sublimetext
          41º Logisim"
        ;;
      esac
      echo O valor atual do contador é: $contador
      let contador=contador+1
      echo -e "\n"
    done
  }
#fim da funções principais

#funções de Instalação
  #01º java
  java(){
    echo -e "\n"
    echo "================================="
    echo "*--------Instalação Java--------*"
    echo "================================="
    echo -e "\n"
    sudo apt install default-jre -y && sudo apt install default-jdk -y
  }
  #02 eclipse
  eclipse(){
    echo -e "\n"
    echo "================================="
    echo "*------Instalação Eclipse-------*"
    echo "================================="
    echo -e "\n"
    #wget -c https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2020-09/R/eclipse-java-2020-09-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
    #sudo tar -zxvf eclipse.tar.gz -C /opt/
    #sudo rm eclipse.tar.gz
    #echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
    #sudo chmod +x /usr/share/applications/eclipse.desktop
    sudo snap install eclipse --edge --classic
  }
  #03º netbeans
  netbeans(){
    echo "==========================="
    echo "*---Instalação netbeans---*"
    echo "==========================="
    echo -e "\n"
    #wget -c https://downloads.apache.org/netbeans/netbeans/12.1/Apache-NetBeans-12.1-bin-linux-x64.sh -O netbeans.sh
    #sudo chmod +x netbeans.sh
    #./netbeans.sh
    #sudo rm netbeans.sh
    sudo snap install netbeans --classic
  }
  #04º python&pycharm
  python_pycharm(){
    echo "==================================="
    echo "*---Instalação python & pycharm---*"
    echo "==================================="
    echo -e "\n"
    sudo apt-get install python -y
    sudo apt-get install python3 -y
    sudo apt-get install python-tk -y
    sudo apt-get install python3-tk -y
    #wget -c https://download-cf.jetbrains.com/python/pycharm-community-2020.2.3.tar.gz -O pycharm.tar.gz
    #sudo tar -xzvf pycharm.tar.gz
    #sudo mv pycharm-community-2020.2.3 /opt/pycharm
    #sudo rm pycharm.tar.gz
    #echo -e '[Desktop Entry]\n Version=1.0\n Name=pycharm\n Exec=/opt/pycharm/bin/pycharm.sh\n Icon=/opt/pycharm/bin/pycharm.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/pycharm.desktop
    #sudo chmod +x /usr/share/applications/pycharm.desktop
    sudo snap install pycharm-community --classic
  }
  #05º packettracer
  packettracer(){
    echo "==============================="
    echo "*---Instalação PacketTracer---*"
    echo "==============================="
    echo -e "\n"
    #https://drive.google.com/file/d/1IfqZZKxttJQnP2YZx7JEc9-YQquXeH91
    wget -c https://www.dropbox.com/s/86ub8ecs9b8frt5/PacketTracer_731_amd64.deb -O PacketTracer.deb
    sudo dpkg -i PacketTracer.deb
    rm PacketTracer.deb
    sudo apt-get install -f -y
  }
  #06º star_uml
  star_uml(){
    echo "==============="
    echo "*---StarUML---*"
    echo "==============="
    echo -e "\n"
    #Fonte para instalação do appimage
    #https://www.edivaldobrito.com.br/integrador-appimagelauncher-no-linux/
    #wget -c http://staruml.io/download/releases/StarUML-3.2.2.AppImage -O staruml.AppImage
    #wget -c http://staruml.io/image/staruml_logo.png -O staruml.png
    #sudo mkdir /opt/staruml
    #sudo mv staruml.AppImage /opt/staruml
    #sudo mv staruml.png /opt/staruml
    #echo -e '[Desktop Entry]\n Version=1.0\n Name=staruml\n Exec=/opt/staruml/staruml.AppImage\n Icon=/opt/staruml/staruml.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/staruml.desktop
    #sudo chmod 777 /usr/share/applications/staruml.desktop
    #sudo chmod 777 /opt/staruml/staruml.AppImage
    wget -c https://staruml-7a0.kxcdn.com/releases-v4/StarUML_4.0.0_amd64.deb
    sudo dpkg -i StarUML_4.0.0_amd64.deb
    rm StarUML_4.0.0_amd64.deb
    sudo apt-get install -f -y
  }
  #07º evolus_pencil
  evolus_pencil(){
    echo "====================="
    echo "*---evolus pencil---*"
    echo "====================="
    echo -e "\n"
    wget -c https://pencil.evolus.vn/dl/V3.1.0.ga/pencil_3.1.0.ga_amd64.deb -O pencil.deb
    sudo apt-get remove pencil --purge -y
    sudo dpkg -i pencil.deb
    sudo rm pencil.deb
    sudo apt-get install -f -y
  }
  #08º project_libre 
  project_libre(){
    echo "====================="
    echo "*---project libre---*"
    echo "====================="
    echo -e "\n"
    wget -c https://megalink.dl.sourceforge.net/project/projectlibre/ProjectLibre/1.9.2/projectlibre_1.9.2-1.deb -O projectlibre.deb
    sudo dpkg -i projectlibre.deb
    sudo rm projectlibre.deb
    sudo apt-get install -f -y
  }
  #09º vscode
  vscode(){
    echo "========================="
    echo "*---Instalação vscode---*"
    echo "========================="
    echo -e "\n"
    wget -c https://az764295.vo.msecnd.net/stable/fcac248b077b55bae4ba5bab613fd6e9156c2f0c/code_1.51.0-1604600753_amd64.deb -O vscode.deb
    sudo dpkg -i vscode.deb
    sudo apt-get -f install -y
    sudo rm vscode.deb
  }
  #10º virtualbox
  virtualbox(){
    echo "============================="
    echo "*---Instalação virtualbox---*"
    echo "============================="
    echo -e "\n"
    wget -c https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb -O virtualbox.deb
    sudo dpkg -i virtualbox.deb
    sudo apt-get -f install -y
    sudo rm virtualbox.deb
  }
  #11º mysql&workbench
  mysql_workbench(){
    echo "========================"
    echo "*---Instalação mysql---*"
    echo "========================"
    echo -e "\n"
    echo "*********************"
    echo "SENHA DO MYSQL É ifce"
    echo "*********************"
    echo -e "\n"
    sleep 5
    #sudo apt-get update && apt-get upgrade -y
    #sudo apt install mysql-server mysql-client mysql-workbench -y
    #sudo apt-get install minisat2 -y && sudo apt-get install python-tk -y
    wget -c https://repo.mysql.com//mysql-apt-config_0.8.16-1_all.deb
    sudo dpkg -i mysql-apt-config_0.8.16-1_all.deb
    rm mysql-apt-config_0.8.16-1_all.deb
    sudo apt-get update
    sudo apt-get install mysql-client mysql-server mysql-workbench-community -y
    sudo apt update
    sudo apt upgrade -y
  }
  #12º postgresql
  postgresql(){
    echo "=================="
    echo "*---postgresql---*"
    echo "=================="
    echo -e "\n"
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt-get update
    sudo apt install postgresql postgresql-contrib -y
    echo -e "\n"
    echo "*********************************************"
    echo "su postgres -c psql
    ALTER USER postgres WITH PASSWORD 'ifce';
    \q"
    echo "*********************************************"
    echo -e "\n"
    sleep 5
    su postgres -c psql
    ALTER USER postgres WITH PASSWORD 'ifce';
    \q
  }
  #13º phpmyadmin
  phpmyadmin(){
    echo "=================================="
    echo "====== Instalando phpmyadmin ====="
    echo "=================================="
    echo -e "\n"
    echo "senha que deve ser colocada para phpmyadmin é ifce"
    echo -e "\n"
    sleep 5
    sudo apt-get install phpmyadmin -y
    echo "testar o phpmyadmin no navegador http://localhost/phpmyadmin"
    echo "usuario phpmyadmin senha ifce"
  }
  #14º ocsinventory-agent
  ocsinventory-agent(){
    echo "=========================="
    echo "*---ocsinventory-agent---*"
    echo "=========================="
    echo "***************************************"
    echo "*---http://10.50.11.16/ocsinventory---*"
    echo "***************************************"
    echo -e "\n"
    sleep 5
    sudo apt install ocsinventory-agent -y
  }
  #15º apache2
  apache2(){
    echo "==============="
    echo "*---apache2---*"
    echo "==============="
    echo -e "\n"
    sudo apt install apache2 -y
  }
  #16º php7.0&php_extras
  php7.4(){
    echo "==============="
    echo "*---php 7.4---*"
    echo "==============="
    echo -e "\n"
    sudo apt install build-essential -y
    #sudo apt install php libapache2-mod-php php-mysql -y
    #sudo apt install php7.0 libapache2-mod-php7.0 -y
    #sudo apt install php7.0-cli -y
    sudo apt install php7.4-cli
  }
  #17º traceroute
  traceroute(){
    echo "=================="
    echo "*---traceroute---*"
    echo "=================="
    echo -e "\n"
    sudo apt install traceroute -y
  }
  #18º pgadmin3
  pgadmin3(){
    echo "================"
    echo "*---pgadmin3---*"
    echo "================"
    echo -e "\n"
    sudo apt install pgadmin3 -y
    echo "================"
    echo "*---pgadmin4---*"
    echo "================"
    wget --quiet -O - https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
    sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
    sudo apt install pgadmin4 -y
    sudo apt install pgadmin4-desktop -y
    sudo apt install pgadmin4-web -y
  }
  #19º ruby
  ruby(){
    echo "============"
    echo "*---ruby---*"
    echo "============"
    echo -e "\n"
    sudo apt install ruby -y
  }
  #20º docker&docker.io
  docker_docker.io(){
    echo "========================"
    echo "*---docker&docker.io---*"
    echo "========================"
    echo -e "\n"
    sudo apt install docker -y && apt install docker.io -y
    sudo usermod -a -G docker aluno && service docker restart #[para testar basta digitar docker ps]
  }
  #21º gnome-panel
  gnome-panel(){
    echo "==================="
    echo "*---gnome-panel---*"
    echo "==================="
    echo -e "\n"
    sudo apt install gnome-panel -y
    gnome-desktop-item-edit /usr/share/applications/ --create-new
  }
  #22º wakeonlan
  wakeonlan(){
    echo "================="
    echo "*---wakeonlan---*"
    echo "================="
    echo -e "\n"
    sudo apt install wakeonlan -y
  }
  #23º etherwake
  etherwake(){
    echo "================="
    echo "*---etherwake---*"
    echo "================="
    echo -e "\n"
    sudo apt install etherwake -y
  }
  #24º nmap
  nmap(){
    echo "============"
    echo "*---nmap---*"
    echo "============"
    echo -e "\n"
    sudo apt install nmap -y
  }
  #25º ssh
  ssh(){
    echo "==========="
    echo "*---ssh---*"
    echo "==========="
    echo -e "\n"
    sudo apt install openssh-server -y
  }
  #26º nbtscan
  nbtscan(){
    echo "==============="
    echo "*---nbtscan---*"
    echo "==============="
    echo -e "\n"
    sudo apt install nbtscan -y
  }
  #27º net-tools
  net-tools(){
    echo "================="
    echo "*---net-tools---*"
    echo "================="
    echo -e "\n"
    sudo apt install net-tools -y
  }
  #28º flashplugin-installer
  flashplugin-installer(){
    echo "============================="
    echo "*---flashplugin-installer---*"
    echo "============================="
    echo -e "\n"
    sudo apt-get install flashplugin-installer -y
  }
  #29º postgis
  postgis(){
    echo "==============="
    echo "*---postgis---*"
    echo "==============="
    echo -e "\n"
    sudo apt install postgis -y
    sudo apt install postgresql-13-postgis-3 -y
  }
  #30º octave
  octave(){
    echo "=============="
    echo "*---octave---*"
    echo "=============="
    echo -e "\n"
    sudo apt install octave -y
  }
  #31º gtkterm
  gtkterm(){
    echo "==============="
    echo "*---gtkterm---*"
    echo "==============="
    echo -e "\n"
    sudo apt install gtkterm -y
  }
  #32º kmag
  kmag(){
    echo "============"
    echo "*---kmag---*"
    echo "============"
    echo -e "\n"
    sudo apt install kmag -y
  }
  #33º editor_vim
  editor_vim(){
    echo "=================="
    echo "*---editor vim---*"
    echo "=================="
    echo -e "\n"
    sudo apt-get install vim -y
  }
  #34º Scilab
  Scilab(){
    echo "=================="
    echo "*-----Scilab-----*"
    echo "=================="
    echo -e "\n"
    sudo apt-get update
    sudo apt-get install scilab -y
  }
  #35º Gimp
  Gimp(){
    echo "=================="
    echo "*------Gimp------*"
    echo "=================="
    echo -e "\n"
    sudo snap install gimp
  }
  #36º wireshark
  wireshark(){
    echo "================="
    echo "*---wireshark---*"
    echo "================="
    echo -e "\n"
    sudo apt install wireshark -y
    sudo dpkg-reconfigure wireshark-common && sudo usermod -a -G wireshark aluno && sudo chmod 777 /usr/bin/dumpcap
  }
  #37º brackets
  brackets(){
    echo "================"
    echo "*---brackets---*"
    echo "================"
    echo -e "\n"
    sudo snap install brackets --classic
  }
  #38º Grub_Customizer
  Grub_Customizer(){
    echo "======================="
    echo "*---Grub Customizer---*"
    echo "======================="
    echo -e "\n"
    sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
    sudo apt-get update
    sudo apt-get install grub-customizer -y
  }
  #39º systemback
  systemback(){
    echo "=================="
    echo "*---systemback---*"
    echo "=================="
    echo -e "\n"
    #sudo apt-add-repository ppa:nemh/systemback -y
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B
    sudo add-apt-repository "deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main"
    sudo apt-get update
    sudo apt-get install systemback -y
  }
  #40º sublimetext
  sublimetext(){
    echo "==================="
    echo "*---sublimetext---*"
    echo "==================="
    echo -e "\n"
    sudo snap install sublime-text --classic
  }
  #41º Logisim
  Logisim(){
    echo "==============="
    echo "*---Logisim---*"
    echo "==============="
    echo -e "\n"
    sudo apt-get install logisim -y
  }
#fim da função de Instalação

#funções de Desistalação
  #01 java
  d-java(){
    echo -e "\n"
    echo "================================="
    echo "*--------Desistalar Java--------*"
    echo "================================="
    echo -e "\n"
    sudo apt remove default-jre -y && sudo apt remove default-jdk -y
  }
  #02 eclipse
  d-eclipse(){
    echo -e "\n"
    echo "================================="
    echo "*------Desistalar Eclipse-------*"
    echo "================================="
    echo -e "\n"
    #sudo rm -rf /opt/eclipse
    #sudo rm /usr/share/applications/eclipse.desktop
    sudo snap remove eclipse --edge --classic
  }
  #03º netbeans
  d-netbeans(){
    echo "==========================="
    echo "*---Desistalar netbeans---*"
    echo "==========================="
    echo -e "\n"
    #sudo sh /usr/local/netbeans-12.1/uninstall.sh
    sudo snap remove netbeans --classic
  }
  #04º python&pycharm
  d-python_pycharm(){
    echo "==================================="
    echo "*---Desistalar python & pycharm---*"
    echo "==================================="
    echo -e "\n"
    #sudo apt-get remove python -y
    #sudo apt-get remove python3 -y
    #sudo apt-get remove python-tk -y
    #sudo apt-get remove python3-tk -y
    #sudo rm -rf /opt/pycharm
    #sudo rm /usr/share/applications/pycharm.desktop
    sudo snap install pycharm-community --classic
  }
  #05º packettracer
  d-packettracer(){
    echo "==============================="
    echo "*---Desistalar PacketTracer---*"
    echo "==============================="
    echo -e "\n"
    sudo apt remove packettracer --purge -y
  }
  #06º star_uml
  d-star_uml(){
    echo "=========================="
    echo "*---Desistalar StarUML---*"
    echo "=========================="
    echo -e "\n"
    #Fonte para instalação do appimage
    #https://www.edivaldobrito.com.br/integrador-appimagelauncher-no-linux/
    #sudo rm -rf /opt/staruml
    #sudo rm /usr/share/applications/staruml.desktop
    sudo apt-get remove staruml --purge -y
  }
  #07º evolus_pencil
  d-evolus_pencil(){
    echo "================================"
    echo "*---Desistalar evolus pencil---*"
    echo "================================"
    echo -e "\n"
    sudo apt-get remove pencil --purge -y
  }
  #08º project_libre 
  d-project_libre(){
    echo "================================"
    echo "*---Desistalar project libre---*"
    echo "================================"
    echo -e "\n"
    sudo apt remove projectlibre -y --purge
  }
  #09º vscode
  d-vscode(){
    echo "========================="
    echo "*---Desistalar vscode---*"
    echo "========================="
    echo -e "\n"
    sudo apt remove code -y --purge
  }
  #10º virtualbox
  d-virtualbox(){
    echo "============================="
    echo "*---Desistalar virtualbox---*"
    echo "============================="
    echo -e "\n"
    sudo apt remove virtualbox-6.1 -y --purge
  }
  #11º mysql&workbench
  d-mysql_workbench(){
    echo "========================"
    echo "*---Desistalar mysql---*"
    echo "========================"
    sudo apt-get remove –purge mysql-server
    sudo /etc/init.d/mysql stop
    sudo apt-get remove –purge mysql-common
    sudo rm -rf /var/lib/mysql
    sudo apt-get autoremove -y --purge
    sudo apt-get autoclean
    sudo apt-get clean
  }
  #12º postgresql
  d-postgresql(){
    echo "============================="
    echo "*---Desistalar postgresql---*"
    echo "============================="
    sudo apt-get --purge remove postgresql postgresql-client postgresql-client-common -y
    sudo apt-get autoremove -y
  }
  #13º phpmyadmin
  d-phpmyadmin(){
    echo "=================================="
    echo "====== Desistalar phpmyadmin ====="
    echo "=================================="
    sudo apt-get remove phpmyadmin -y --purge
  }
  #14º ocsinventory-agent
  d-ocsinventory-agent(){
    echo "======================================"
    echo "*--- Desistalar ocsinventory-agent---*"
    echo "======================================"
    sudo apt remove ocsinventory-agent -y --purge
  }
  #15º apache2
  d-apache2(){
    echo "=========================="
    echo "*---Desistalar apache2---*"
    echo "=========================="
    echo -e "\n"
    sudo apt remove apache2 -y --purge
  }
  #16º php7.0&php_extras
  d-php7.4(){
    echo "=========================="
    echo "*---Desistalar php 7.0---*"
    echo "=========================="
    echo -e "\n"
    #sudo apt remove build-essential -y
    #sudo apt remove php libapache2-mod-php php-mysql -y
    #sudo apt remove php7.0 libapache2-mod-php7.0 -y
    #sudo apt remove php7.0-cli -y
    sudo apt remove php7.4-cli -y
  }
  #17º traceroute
  d-traceroute(){
    echo "============================="
    echo "*---Desistalar traceroute---*"
    echo "============================="
    echo -e "\n"
    sudo apt remove traceroute -y --purge
  }
  #18º pgadmin3
  d-pgadmin3(){
    echo "==========================="
    echo "*---Desistalar pgadmin3---*"
    echo "==========================="
    echo -e "\n"
    sudo apt remove pgadmin3 -y --purge
  }
  #19º ruby
  d-ruby(){
    echo "======================="
    echo "*---Desistalar ruby---*"
    echo "======================="
    echo -e "\n"
    sudo apt remove ruby -y --purge
  }
  #20º docker&docker.io
  d-docker_docker.io(){
    echo "==================================="
    echo "*---Desistalar docker&docker.io---*"
    echo "==================================="
    echo -e "\n"
    sudo apt remove docker -y && apt remove docker.io -y
  }
  #21º gnome-panel
  d-gnome-panel(){
    echo "=============================="
    echo "*---Desistalar gnome-panel---*"
    echo "=============================="
    echo -e "\n"
    sudo apt remove gnome-panel -y
  }
  #22º wakeonlan
  d-wakeonlan(){
    echo "============================"
    echo "*---Desistalar wakeonlan---*"
    echo "============================"
    echo -e "\n"
    sudo apt remove wakeonlan -y
  }
  #23º etherwake
  d-etherwake(){
    echo "============================"
    echo "*---Desistalar etherwake---*"
    echo "============================"
    echo -e "\n"
    sudo apt remove etherwake -y
  }
  #24º nmap
  d-nmap(){
    echo "======================="
    echo "*---Desistalar nmap---*"
    echo "======================="
    echo -e "\n"
    sudo apt remove nmap -y
  }
  #25º ssh
  d-ssh(){
    echo "======================"
    echo "*---Desistalar ssh---*"
    echo "======================"
    echo -e "\n"
    sudo apt install openssh-server -y
  }
  #26º nbtscan
  d-nbtscan(){
    echo "=========================="
    echo "*---Desistalar nbtscan---*"
    echo "=========================="
    echo -e "\n"
    sudo apt remove nbtscan -y
  }
  #27º net-tools
  d-net-tools(){
    echo "============================"
    echo "*---Desistalar net-tools---*"
    echo "============================"
    echo -e "\n"
    sudo apt remove net-tools -y
  }
  #28º flashplugin-installer
  d-flashplugin-installer(){
    echo "========================================"
    echo "*---Desistalar flashplugin-installer---*"
    echo "========================================"
    echo -e "\n"
    sudo apt-get remove flashplugin-installer -y
  }
  #29º postgis
  d-postgis(){
    echo "=========================="
    echo "*---Desistalar postgis---*"
    echo "=========================="
    echo -e "\n"
    sudo apt remove postgis* -y
  }
  #30º octave
  d-octave(){
    echo "========================="
    echo "*---Desistalar octave---*"
    echo "========================="
    echo -e "\n"
    sudo apt remove octave -y
  }
  #31º gtkterm
  d-gtkterm(){
    echo "=========================="
    echo "*---Desistalar gtkterm---*"
    echo "=========================="
    echo -e "\n"
    sudo apt remove gtkterm -y
  }
  #32º kmag
  d-kmag(){
    echo "======================="
    echo "*---Desistalar kmag---*"
    echo "======================="
    echo -e "\n"
    sudo apt remove kmag -y
  }
  #33º editor_vim
  d-editor_vim(){
    echo "============================="
    echo "*---Desistalar editor vim---*"
    echo "============================="
    echo -e "\n"
    sudo apt-get remove vim -y
  }
  #34º Scilab
  d-Scilab(){
    echo "============================="
    echo "*-----Desistalar Scilab-----*"
    echo "============================="
    echo -e "\n"
    sudo apt-get update
    sudo apt-get remove scilab -y
  }
  #35º Gimp
  d-Gimp(){
    echo "============================="
    echo "*------Desistalar Gimp------*"
    echo "============================="
    echo -e "\n"
    sudo snap remove gimp
  }
  #36º wireshark
  d-wireshark(){
    echo "============================"
    echo "*---Desistalar wireshark---*"
    echo "============================"
    echo -e "\n"
    sudo apt remove wireshark -y
  }
  #37º brackets
  d-brackets(){
    echo "==========================="
    echo "*---Desistalar brackets---*"
    echo "==========================="
    echo -e "\n"
    sudo snap remove brackets --classic
  }
  #38º Grub_Customizer
  d-Grub_Customizer(){
    echo "=================================="
    echo "*---Desistalar Grub Customizer---*"
    echo "=================================="
    echo -e "\n"
    sudo apt-get remove grub-customizer -y --purge
  }
  #39º systemback
  d-systemback(){
    echo "============================="
    echo "*---Desistalar systemback---*"
    echo "============================="
    echo -e "\n"
    sudo apt-get remove systemback -y --purge
  }
  #40º sublimetext
  d-sublimetext(){
    echo "==============================="
    echo "*--- Desistalar sublimetext---*"
    echo "==============================="
    echo -e "\n"
    sudo snap remove sublime-text --classic
  }
  #41º Logisim
  d-Logisim(){
    echo "=========================="
    echo "*---Desistalar Logisim---*"
    echo "=========================="
    echo -e "\n"
    sudo apt-get remove logisim -y --purge
  }
#fim da funções de Desistalação

#Laço principal
while true; do
  echo -e "*---Menu Principal---*\n"
  echo "Selecione uma opção:"
  echo "1 - Atualizar Sistema"
  echo "2 - Instalar Tudo"
  echo "3 - Instalação Individual"
  echo "4 - Desistalar tudo"
  echo "5 - Desistalar Individualmente"
  echo "6 - Ver Lista de Programas "
  echo "0 - Sair"
  echo -n "opção:"
  read opcao;

  case $opcao in
    0)
      break
    ;;
    1)
      atualizar
    ;;
    2)
      instalar_tudo
    ;;
    3)
      instalar_individualmente
    ;;
    4)
      desistalar_tudo
    ;;
    5)
      desistalar_individualmente
    ;;
    6)
      lista_programas
    ;;
  esac
  echo -e "\n"

done
#/fim do Laço principal

clear