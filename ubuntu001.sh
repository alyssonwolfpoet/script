#!/bin/bash
#autor: Alysson Sousa
#data: 23/09/2023

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 23/09/2023'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5

#funções principal
	lista(){
		echo -e "
#01Android Studio
#02 apache2
#03 brackets
#04 build_essential
	#-gcc
#05 docker
#06 eclipse
#07 etherwake
#08 evolus_pencil
#09 flashplugin
#10 gimp
#11 git
#12 github_desktop
#13 gnome_panel
#14 grub_customizer
#15 gtkterm
#16 intelliJIDEA
#17 java
#18 kmag
#19 logisim
#20 minisat
#21 mysql
	#-mysql-server
	#-mysql-workbench
#22 nbtscan
#23 netbeans
#24 net_tools
#25 nmap
#26 node
#27 ocsinventory
#28 octave
#29 packettracer
#30 php
#31 phpmyadmin
#32 postgresql
	#-postgis
	#-pgadmin
		#-pgadmin3
		#-pgadmin4	
#33 project_libre
#34 python
	#-tkinter3
	#-pycharm
#35 ruby
#36 scilab
#37 ssh
#38 star_uml
#39 sublimetext
#40 systemback
#41 traceroute
#42 vim
#43 virtualbox
#44 vscode
#45 wakeonlan
#46 wireshark"
	}

	atualizacao(){
    echo "=========================================="
    echo "*---Atualização do Sistema Operacional---*"
    echo "=========================================="
    sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y
    sudo snap refresh
    sudo flatpak update
  	}
	instalar_tudo(){
		atualizacao
    		echo -e "\n01/42%\n"
    		#01 androidStudio
    		androidStudio

		echo -e "\n02/42%\n"
		#02 apache2
		apache2

		echo -e "\n03/42%\n"
		#03 brackets
		brackets

		echo -e "\n04/42%\n"
		#04 build_essential
			#-gcc
		build_essential

		echo -e "\n05/42%\n"
		#05 docker
		docker

		echo -e "\n06/42%\n"
		#06 eclipse
		eclipse

		echo -e "\n07/42% \n"
		#07 etherwake
		etherwake

		echo -e "\n08/42%\n"
		#08 evolus_pencil
		evolus_pencil

		echo -e "\n09/42%\n"
		#09 flashplugin
		flashplugin

		echo -e "\n10/42%\n"
		#10 gimp
		gimp

    		echo -e "\n11/42%\n"
    		#11 git
    		git

		echo -e "\n12/42%\n"
		#12 github_desktop
		github_desktop

		echo -e "\n13/42%\n"
		#13 gnome_panel
		gnome_panel

		echo -e "\n14/42%\n"
		#14 grub_customizer
		grub_customizer

		echo -e "\n15/42%\n"
		#15 gtkterm
		gtkterm

    		echo -e "\n16/42%\n"
    		#16 intelliJIDEA
    		intelliJIDEA

		echo -e "\n17/42%\n"
		#17 java
		java

		echo -e "\n18/42%\n"
		#18 kmag
		kmag

		echo -e "\n19/42%\n"
		#19 logisim
		logisim

		echo -e "\n20/42%\n"
		#20 minisat
		minisat

		echo -e "\n21/42%\n"
		#21 mysql
			#-mysql-server
			#-mysql-workbench
		mysql

		echo -e "\n22/42%\n"
		#22 nbtscan
		nbtscan

		echo -e "\n22/42%\n"
		#22 netbeans
		netbeans

		echo -e "\n23/42%\n"
		#23 net_tools
		net_tools

		echo -e "\n24/42%\n"
		#24 nmap
		nmap

    		echo -e "\n25/42%\n"
    		#25 node
    		node

		echo -e "\n26/42%\n"
		#26 ocsinventory
		ocsinventory

		echo -e "\n27/42%\n"
		#27 octave
		octave

		echo -e "\n28/42%\n"
		#28 packettracer
		packettracer

		echo -e "\n29/42%\n"
		#29 php
		php

		echo -e "\n30/42%\n"
		#30 phpmyadmin
		phpmyadmin

		echo -e "\n31/42%\n"
		#28 postgresql
			#-postgis
			#-pgadmin
				#-pgadmin3
				#-pgadmin4
		postgresql

		echo -e "\n29/42%\n"
		#29 project_libre
		project_libre

		echo -e "\n30/42%\n"
		#30 python
			#-tkinter3
			#-pycharm
		python

		echo -e "\n31/42%\n"
		#31 ruby
		ruby

		echo -e "\n32/42%\n"
		#32 scilab
		scilab

		echo -e "\n33/42%\n"
		#33 ssh
		ssh

		echo -e "\n34/42%\n"
		#34 star_uml
		star_uml

		echo -e "\n35/42%\n"
		#35 sublimetext
		sublimetext

		echo -e "\n36/42%\n"
		#36 systemback
		systemback

		echo -e "\n37/42%\n"
		#37 traceroute
		traceroute

		echo -e "\n38/42%\n"
		#38 vim
		vim

		echo -e "\n39/42%\n"
		#39 virtualbox
		virtualbox

		echo -e "\n40/42%\n"
		#40 vscode
		vscode

		echo -e "\n41/42%\n"
		#41 wakeonlan
		wakeonlan

		echo -e "\n42/42%\n"
		#42 wireshark
		wireshark
	}
	instalar_individualmente(){
		clear
		while true; do
		  lista
		  echo -e "*---instalar_individualmente---*\n"
		  echo "Selecione uma opção:"
		  echo "0 - Sair"
		  echo -n "opção:"
		  read opcao;

			case $opcao in
			    0)
			     	clear
			     	break
			    	;;
			  	01)
					#01Android Studio
					androidStudio
			    	;;
				02)
					#01 apache2
					apache2
				;;
				03)
					#02 brackets
					brackets
				;;
				04)
					#03 build_essential
						#-gcc
					build_essential
				;;
				05)
					#04 docker
					docker
				;;
				06)
					#05 eclipse
					eclipse
				;;
				07)
					#06 etherwake
					etherwake
				;;
				08)
					#07 evolus_pencil
					evolus_pencil
				;;
				09)
					#08 flashplugin
					flashplugin
				;;
				10)
					#09 gimp
					gimp
				;;
		    		11)
    		  			#11 git
			  		git
    				;;
				12)
					#10 github_desktop
					github_desktop
				;;
				13)
					#11 gnome_panel
					gnome_panel
				;;
				14)
					#12 grub_customizer
					grub_customizer
				;;
				15)
					#13 gtkterm
					gtkterm
				;;
		    		16)
        				intelliJIDEA
        			;;
				17)
					#14 java
					java
				;;
				18)
					#15 kmag
					kmag
				;;

				19)
					#16 logisim
					logisim
				;;
				20)
					#17 minisat
					minisat
				;;
				21)
					#18 mysql
						#-mysql-server
						#-mysql-workbench
					mysql
				;;
				22)
					#19 nbtscan
					nbtscan
				;;
				23)
					#20 netbeans
					netbeans
				;;
				24)
					#21 net_tools
					net_tools
				;;
				25)
					#22 nmap
					nmap
				;;

		    		26)
    		  		node
    				;;
        			27)
    					#23 ocsinventory
    					ocsinventory
    				;;
				28)
					#24 octave
					octave
				;;
				29)
					#25 packettracer
					packettracer
				;;
				30)
					#26 php
					php
				;;
				31)
					#27 phpmyadmin
					phpmyadmin
				;;
				32)
					#28 postgresql
						#-postgis
						#-pgadmin
							#-pgadmin3
							#-pgadmin4
					postgresql
				;;
				33)
					#29 project_libre
					project_libre
				;;
				34)
					#30 python
						#-tkinter3
						#-pycharm
					python
				;;
				35)
					#31 ruby
					ruby
				;;
				36)
					#32 scilab
					scilab
				;;
				37)
					#33 ssh
					ssh
				;;
				38)
					#34 star_uml
					star_uml
				;;
				39)
					#35 sublimetext
					sublimetext
				;;
				40)
					#36 systemback
					systemback
				;;
				41)
					#37 traceroute
					traceroute
				;;
				42)
					#38 vim
					vim
				;;
				43)
					#39 virtualbox
					virtualbox
				;;
				44)
					#40 vscode
					vscode
				;;
				45)
					#41 wakeonlan
					wakeonlan
				;;
				46)
					#42 wireshark
					wireshark
	  			;;
  			esac
  		done
	}
#fim funções principal

#funções de Instalação
  #01 androidStudio
  androidStudio(){
    echo "====================="
    echo "*---androidStudio---*"
    echo "====================="
    echo -e "\n"
    sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

    wget -c https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.19/android-studio-2022.3.1.19-linux.tar.gz -O android-studio.tar.gz
    sudo tar -zxvf android-studio.tar.gz -C /opt/
    rm android-studio.tar.gz

    echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=Android Studio\nComment=android studio\nExec=/opt/android-studio/bin/studio.sh\nIcon=/opt/android-studio/bin/studio.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" | sudo tee /usr/share/applications/android-studio.desktop
    sudo chmod +x /usr/share/applications/android-studio.desktop
  }
	#02 apache2
	apache2(){
		echo "==============="
		echo "*---apache2---*"
		echo "==============="
		echo -e "\n"
		sudo apt install apache2 -y
	}
	#03 brackets
	brackets(){
		echo "================"
		echo "*---brackets---*"
		echo "================"
		echo -e "\n"
		#sudo snap install brackets --classic
		flatpak install flathub io.brackets.Brackets -y
	}
	#04 build_essential
		#-gcc
	build_essential(){
		sudo apt install build-essential gdb -y
	}
	#05 docker
	docker(){
	    echo "========================"
	    echo "*---docker&docker.io---*"
	    echo "========================"
	    echo -e "\n"
	    sudo apt install docker -y && apt install docker.io -y
	    sudo usermod -a -G docker aluno && service docker restart #[para testar basta digitar docker ps]
	}
	#06 eclipse
	eclipse(){
	    echo -e "\n"
	    echo "================================="
	    echo "*------Instalação Eclipse-------*"
	    echo "================================="
	    #echo -e "\n"
	    #wget -c https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2023-09/R/eclipse-java-2023-09-R-linux-gtk-x86_64.tar.gz&mirror_id=1135 -O eclipse.tar.gz
	    #sudo tar -zxvf eclipse.tar.gz -C /opt/
	    #sudo rm eclipse.tar.gz
	    #echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
	    #sudo chmod +x /usr/share/applications/eclipse.desktop
	    sudo snap install eclipse --edge --classic
	    #flatpak install flathub org.eclipse.Java -y
	}
	#07 etherwake
	etherwake(){
	    echo "================="
	    echo "*---etherwake---*"
	    echo "================="
	    echo -e "\n"
	    sudo apt install etherwake -y
	}
	#08 evolus_pencil
	evolus_pencil(){
	    echo "====================="
	    echo "*---evolus pencil---*"
	    echo "====================="
	    echo -e "\n"
	    wget -c https://pencil.evolus.vn/dl/V3.1.1.ga/Pencil_3.1.1.ga_amd64.deb -O pencil.deb
	    sudo apt-get remove pencil --purge -y
	    sudo dpkg -i pencil.deb
	    sudo rm pencil.deb
	    sudo apt-get install -f -y
	}
	#09 flashplugin
	flashplugin(){
	    echo "============================="
	    echo "*---flashplugin-installer---*"
	    echo "============================="
	    echo -e "\n"
	    sudo apt-get install flashplugin-installer -y
	}
	#10 gimp
	gimp(){
	    echo "=================="
	    echo "*------Gimp------*"
	    echo "=================="
	    echo -e "\n"
	    #sudo snap install gimp
	    flatpak install flathub org.gimp.GIMP -y
	}
	#11 git
	git(){
	  echo "=================="
	  echo "*------Git------*"
	  echo "=================="
	  echo -e "\n"
		apt-get install git -y
	}
	#12 github_desktop
	github_desktop(){
	  echo "============================"
    echo "*------github_desktop------*"
    echo "============================"
    #https://github.com/shiftkey/desktop
    #wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
		#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
		#sudo apt-get update
		#sudo apt install github-desktop -y
		wget -c https://github.com/shiftkey/desktop/releases/download/release-3.3.1-linux1/GitHubDesktop-linux-amd64-3.3.1-linux1.deb
		sudo dpkg -i GitHubDesktop-linux-amd64-3.3.1-linux1.deb
		rm GitHubDesktop-linux-amd64-3.3.1-linux1.deb
	}
	#13 gnome_panel
	gnome_panel(){
	    echo "==================="
	    echo "*---gnome-panel---*"
	    echo "==================="
	    echo -e "\n"
	    sudo apt install gnome-panel -y
	    gnome-desktop-item-edit /usr/share/applications/ --create-new
	}
	#14 grub_customizer
	grub_customizer(){
	    echo "======================="
	    echo "*---Grub Customizer---*"
	    echo "======================="
	    echo -e "\n"
	    sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
	    sudo apt-get update
	    sudo apt-get install grub-customizer -y
	}
	#15 gtkterm
	gtkterm(){
	    echo "==============="
	    echo "*---gtkterm---*"
	    echo "==============="
	    echo -e "\n"
	    sudo apt install gtkterm -y
	}
	#16 intelliJIDEA
	intelliJIDEA(){
	echo "===================="
    	echo "*---intelliJIDEA---*"
    	echo "===================="
    	echo -e "\n"
	sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

    	wget -c https://download-cdn.jetbrains.com/idea/ideaIC-2023.2.2.tar.gz -O ideaIC.tar.gz
    	sudo tar -zxvf ideaIC.tar.gz -C /opt/
    	rm ideaIC.tar.gz

    	echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=IntelliJ IDEA\nComment=IntelliJ IDEA\nExec=/opt/idea-IC-222.3739.54/bin/idea.sh\nIcon=/opt/idea-IC-222.3739.54/bin/idea.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" | sudo tee /usr/share/applications/IntelliJIDEA.desktop
    	sudo chmod +x /usr/share/applications/IntelliJIDEA.desktop
	}
	#17 java
	java(){
	    echo -e "\n"
	    echo "================================="
	    echo "*--------Instalação Java--------*"
	    echo "================================="
	    echo -e "\n"
	    #sudo apt install default-jre -y && sudo apt install default-jdk -y
	    #sudo apt install openjdk-18-jdk-headless -y
     	    #sudo apt install openjdk-21-jdk-headless -y
	    wget -c https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb -O java.deb
	    sudo dpkg -i java.deb
	    rm java.deb
	}
	#18 kmag
	kmag(){
	    echo "============"
	    echo "*---kmag---*"
	    echo "============"
	    echo -e "\n"
	    sudo apt install kmag -y
	}
	#19 logisim
	logisim(){
	    echo "==============="
	    echo "*---Logisim---*"
	    echo "==============="
	    echo -e "\n"
	    sudo apt-get install logisim -y
  	}
	#20 minisat
	minisat(){
		#wget -c http://mirrors.kernel.org/ubuntu/pool/universe/m/minisat2/minisat_2.2.1-5build2_amd64.deb -O minisat.deb
		#sudo dpkg -i minisat.deb
		#sudo rm minisat.deb
	    	#sudo apt-get install -f -y
	    	sudo apt-get install minisat2 -y
	}
	#21 mysql
		#-mysql-server
		#-mysql-workbench
	mysql(){
	    echo "========================"
	    echo "*---Instalação mysql---*"
	    echo "========================"
	    echo -e "\n"
	    echo "*********************"
	    echo "SENHA DO MYSQL É ifce"
	    echo "*********************"
	    echo -e "\n"
	    sleep 5
	    wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.26-1_all.deb
	    sudo dpkg -i mysql-apt-config_0.8.26-1_all.deb
	    rm mysql-apt-config_0.8.26-1_all.deb
	    sudo apt-get update
	    sudo apt-get install mysql-client mysql-server mysql-workbench-community -y
	    sudo apt update
	    sudo apt upgrade -y
	} 
	#22 nbtscan
	nbtscan(){
	    echo "==============="
	    echo "*---nbtscan---*"
	    echo "==============="
	    echo -e "\n"
	    sudo apt install nbtscan -y

	}
	#23 netbeans
	netbeans(){
	    echo "==========================="
	    echo "*---Instalação netbeans---*"
	    echo "==========================="
	    echo -e "\n"
	    #wget -c https://dlcdn.apache.org/netbeans/netbeans-installers/19/apache-netbeans_19-1_all.deb -O netbeans.deb
	    #sudo chmod +x netbeans.sh
	    #./netbeans.sh
	    #sudo rm netbeans.sh
	    sudo snap install netbeans --classic
	    #flatpak install flathub org.apache.netbeans -y
	}
	#24 net_tools
	net_tools(){
	    echo "================="
	    echo "*---net-tools---*"
	    echo "================="
	    echo -e "\n"
	    sudo apt install net-tools -y
	}
	#25 nmap
	 nmap(){
	    echo "============"
	    echo "*---nmap---*"
	    echo "============"
	    echo -e "\n"
	    sudo apt install nmap -y
	}
	#26 node
	node(){
	  echo "============"
    echo "*---node---*"
    echo "============"
	  sudo snap install node --channel=latest/edge --classic -y
	}
	#27 ocsinventory
	ocsinventory(){
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
	#28 octave
	octave(){
	    echo "=============="
	    echo "*---octave---*"
	    echo "=============="
	    echo -e "\n"
	    sudo apt install octave -y
	}
	#29 packettracer
	packettracer(){
	    echo "==============================="
	    echo "*---Instalação PacketTracer---*"
	    echo "==============================="
	    echo -e "\n"
	    wget -c https://www.dropbox.com/scl/fi/n18a3kvbiva9ob4wmo3qd/CiscoPacketTracer_821_Ubuntu_64bit.deb?rlkey=g6k5voe0jtqnazi6olker0eb5&dl=0 -O PacketTracer.deb
	    sudo dpkg -i PacketTracer.deb
	    rm PacketTracer.deb
	    sudo apt-get install -f -y
	}
	#30 php
	php(){
	    echo "==========="
	    echo "*---php---*"
	    echo "==========="
	    #sudo apt install php7.4-cli -y
	    sudo apt install php-cli -y
	}
	#31 phpmyadmin
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
	#32 postgresql
			#-postgis
			#-pgadmin
				#-pgadmin3
				#-pgadmin4
	postgresql(){
	    echo "=================="
	    echo "*---postgresql---*"
	    echo "=================="
	    echo -e "\n"
	    sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
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


	    echo "==============="
	    echo "*---postgis---*"
	    echo "==============="
	    echo -e "\n"
	    sudo apt install postgis -y
	    sudo apt install postgresql-16-postgis-3 -y

	    echo "================"
	    echo "*---pgadmin3---*"
	    echo "================"
	    echo -e "\n"
	    sudo apt install pgadmin3 -y

	    echo "================"
	    echo "*---pgadmin4---*"
	    echo "================"
	    wget --quiet -O - https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
	    sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
	    sudo apt install pgadmin4 -y
	    sudo apt install pgadmin4-desktop -y
	    sudo apt install pgadmin4-web -y
	    sudo /usr/pgadmin4/bin/setup-web.sh
	}
	#33 project_libre
	project_libre(){
	    echo "====================="
	    echo "*---project libre---*"
	    echo "====================="
	    echo -e "\n"
	    wget -c https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.9.3/projectlibre_1.9.3-1.deb -O projectlibre.deb
	    sudo dpkg -i projectlibre.deb
	    sudo rm projectlibre.deb
	    sudo apt-get install -f -y
	}
	#34 python
		#-tkinter3
		#-pycharm
	python(){
	    echo "==================================="
	    echo "*---         python            ---*"
	    echo "==================================="
	    #sudo apt install python3.9 -y
	    sudo apt install python3-pip -y
	    echo -e "\n"
	    echo "==================================="
	    echo "*---         tkinter3            ---*"
	    echo "==================================="
	    echo -e "\n"
	    #sudo apt-get install python -y
	    #sudo apt-get install python3 -y
	    #sudo apt-get install python-tk -y
	    sudo apt-get install python3-tk -y
	    echo "==================================="
	    echo "*---         pycharm           ---*"
	    echo "==================================="
	    sudo snap install pycharm-community --classic
	    #flatpak install flathub com.jetbrains.PyCharm-Community -y
	}
	#35 ruby
	ruby(){
	    echo "============"
	    echo "*---ruby---*"
	    echo "============"
	    echo -e "\n"
	    sudo apt install ruby -y
	}
	#36 scilab
	scilab(){
	    echo "=================="
	    echo "*-----Scilab-----*"
	    echo "=================="
	    echo -e "\n"
	    sudo apt-get update
	    sudo apt-get install scilab -y
	}
	#37 ssh
	ssh(){
	    echo "==========="
	    echo "*---ssh---*"
	    echo "==========="
	    echo -e "\n"
	    sudo apt install openssh-server -y
	}
	#38 star_uml
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
	    wget -c https://staruml.io/api/download/releases-v6/StarUML_6.0.1_amd64.deb
	    sudo dpkg -i StarUML_6.0.1_amd64.deb
	    rm StarUML_6.0.1_amd64.deb
	    sudo apt-get install -f -y
	}
	#39 sublimetext
	sublimetext(){
	    echo "==================="
	    echo "*---sublimetext---*"
	    echo "==================="
	    echo -e "\n"
	    sudo snap install sublime-text --classic
	    #flatpak install flathub com.sublimetext.three -y
 	}
	#40 systemback
	systemback(){
	    echo "=================="
	    echo "*---systemback---*"
	    echo "=================="
	    echo -e "\n"
	    #https://sourceforge.net/projects/systemback-2021/files/Systemback_OLD/
	    #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B
	    #sudo add-apt-repository "deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main" -y
	    #sudo apt-get update
	    #sudo apt-get install systemback -y
	    wget -c https://sinalbr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/systemback_2.0_amd64.deb
	    wget -c https://ufpr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/libsystemback_2.0_amd64.deb
	    wget -c https://sinalbr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/systemback-efiboot-amd64_2.0_all.deb
	    wget -c https://ufpr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/systemback-cli_2.0_amd64.deb
	    wget -c https://sinalbr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/systemback-scheduler_2.0_amd64.deb
	    wget -c https://ufpr.dl.sourceforge.net/project/systemback-2021/Systemback%202%20-%20Debian%2C%20Devuan%2C%20xbuntu%2020.04/systemback-locales_2.0_all.deb
	    sudo dpkg -i *.deb
	    rm *.deb
	    sudo apt-get install -f -y
	}
	#41 traceroute
	traceroute(){
	    echo "=================="
	    echo "*---traceroute---*"
	    echo "=================="
	    echo -e "\n"
	    sudo apt install traceroute -y
	}
	#42 vim
	vim(){
	    echo "=================="
	    echo "*---editor vim---*"
	    echo "=================="
	    echo -e "\n"
	    sudo apt-get install vim -y
 	}
	#43 virtualbox
	virtualbox(){
	    echo "============================="
	    echo "*---Instalação virtualbox---*"
	    echo "============================="
	    echo -e "\n"
	    wget -c https://download.virtualbox.org/virtualbox/7.0.10/virtualbox-7.0_7.0.10-158379~Ubuntu~jammy_amd64.deb -O virtualbox.deb
	    sudo dpkg -i virtualbox.deb
	    sudo apt-get -f install -y
	    sudo rm virtualbox.deb
	}
	#44 vscode
	vscode(){
	    echo "========================="
	    echo "*---Instalação vscode---*"
	    echo "========================="
	    echo -e "\n"
	    wget -c https://az764295.vo.msecnd.net/stable/abd2f3db4bdb28f9e95536dfa84d8479f1eb312d/code_1.82.2-1694671812_amd64.deb -O vscode.deb
	    sudo dpkg -i vscode.deb
	    sudo apt-get -f install -y
	    sudo rm vscode.deb
	}
	#45 wakeonlan
	wakeonlan(){
	    echo "================="
	    echo "*---wakeonlan---*"
	    echo "================="
	    echo -e "\n"
	    sudo apt install wakeonlan -y
	}
	#46 wireshark
	wireshark(){
	    echo "================="
	    echo "*---wireshark---*"
	    echo "================="
	    echo -e "\n"
	    sudo apt install wireshark -y
	    sudo dpkg-reconfigure wireshark-common && sudo usermod -a -G wireshark aluno && sudo chmod 777 /usr/bin/dumpcap
	}
#fim funções de Instalação
 
#Laço principal
while true; do
  echo -e "*---Menu Principal---*\n"
  echo "Selecione uma opção:"
  echo "1 - lista"
  echo "2 - instalar_tudo"
  echo "3 - instalar_individualmente"
  echo "@ - atualizacao"
  echo "0 - Sair"
  echo -n "opção:"
  read opcao;

  case $opcao in
    @)
		atualizacao
	;;
    0)
     	break
    ;;
    1)
    	lista
    ;;
    2)
		instalar_tudo
	;;
	3)
		instalar_individualmente
	;;
  esac
  echo -e "\n"

done
#/fim do Laço principal

clear
#programas selecionados pelo editor  github_desktop ,Logisim, sublimetext, editor_vim, vscode, python_pycharm
sudo rm ubuntu001.sh

clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'    Obrigado por usar este serviço      '
'          dev:Alysson Sousa             '
'                                        '
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
