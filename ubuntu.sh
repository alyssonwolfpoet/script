#!/bin/bash
#autor: Alysson Sousa
#data: 07/04/2022

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 07/04/2022'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5

#funções principal
lista() {
	echo -e "
#01 apache2
#02 brackets
#03 build_essential
	#-gcc
#04 docker
#05 eclipse
#06 etherwake
#07 evolus_pencil
#08 flashplugin
#09 gimp
#10 github_desktop
#11 gnome_panel
#12 grub_customizer
#13 gtkterm
#14 java
#15 kmag
#16 logisim
#17 minisat
#18 mysql
	#-mysql-server
	#-mysql-workbench
#19 nbtscan
#20 netbeans
#21 net_tools
#22 nmap
#23 ocsinventory
#24 octave
#25 packettracer
#26 php
#27 phpmyadmin
#28 postgresql
	#-postgis
	#-pgadmin
		#-pgadmin3
		#-pgadmin4	
#29 project_libre
#30 python
	#-tkinter3
	#-pycharm
#31 ruby
#32 scilab
#33 ssh
#34 star_uml
#35 sublimetext
#36 systemback
#37 traceroute	
#38 vim	
#39 virtualbox
#40 vscode
#41 wakeonlan
#42 wireshark"
}

atualizacao() {
	echo "=========================================="
	echo "*---Atualização do Sistema Operacional---*"
	echo "=========================================="
	sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y
	sudo snap refresh
}
instalar_tudo() {
	atualizacao

	echo -e "\n01/42%\n"
	#01 apache2
	apache2

	echo -e "\n02/42%\n"
	#02 brackets
	brackets

	echo -e "\n03/42%\n"
	#03 build_essential
	#-gcc
	build_essential

	echo -e "\n04/42%\n"
	#04 docker
	docker

	echo -e "\n05/42%\n"
	#05 eclipse
	eclipse

	echo -e "\n06/42% \n"
	#06 etherwake
	etherwake

	echo -e "\n07/42%\n"
	#07 evolus_pencil
	evolus_pencil

	echo -e "\n08/42%\n"
	#08 flashplugin
	flashplugin

	echo -e "\n09/42%\n"
	#09 gimp
	gimp

	echo -e "\n10/42%\n"
	#10 github_desktop
	github_desktop

	echo -e "\n11/42%\n"
	#11 gnome_panel
	gnome_panel

	echo -e "\n12/42%\n"
	#12 grub_customizer
	grub_customizer

	echo -e "\n13/42%\n"
	#13 gtkterm
	gtkterm

	echo -e "\n14/42%\n"
	#14 java
	java

	echo -e "\n15/42%\n"
	#15 kmag
	kmag

	echo -e "\n16/42%\n"
	#16 logisim
	logisim

	echo -e "\n17/42%\n"
	#17 minisat
	minisat

	echo -e "\n18/42%\n"
	#18 mysql
	#-mysql-server
	#-mysql-workbench
	mysql

	echo -e "\n19/42%\n"
	#19 nbtscan
	nbtscan

	echo -e "\n20/42%\n"
	#20 netbeans
	netbeans

	echo -e "\n21/42%\n"
	#21 net_tools
	net_tools

	echo -e "\n22/42%\n"
	#22 nmap
	nmap

	echo -e "\n23/42%\n"
	#23 ocsinventory
	ocsinventory

	echo -e "\n24/42%\n"
	#24 octave
	octave

	echo -e "\n25/42%\n"
	#25 packettracer
	packettracer

	echo -e "\n26/42%\n"
	#26 php
	php

	echo -e "\n27/42%\n"
	#27 phpmyadmin
	phpmyadmin

	echo -e "\n28/42%\n"
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
instalar_individualmente() {
	clear
	while true; do
		lista
		echo -e "*---instalar_individualmente---*\n"
		echo "Selecione uma opção:"
		echo "0 - Sair"
		echo -n "opção:"
		read opcao

		case $opcao in
		0)
			clear
			break
			;;
		01)
			#01 apache2
			apache2
			;;
		02)
			#02 brackets
			brackets
			;;
		03)
			#03 build_essential
			#-gcc
			build_essential
			;;
		04)
			#04 docker
			docker
			;;
		05)
			#05 eclipse
			eclipse
			;;
		06)
			#06 etherwake
			etherwake
			;;
		07)
			#07 evolus_pencil
			evolus_pencil
			;;
		08)
			#08 flashplugin
			flashplugin
			;;
		09)
			#09 gimp
			gimp
			;;
		10)
			#10 github_desktop
			github_desktop
			;;
		11)
			#11 gnome_panel
			gnome_panel
			;;
		12)
			#12 grub_customizer
			grub_customizer
			;;
		13)
			#13 gtkterm
			gtkterm
			;;
		14)
			#14 java
			java
			;;
		15)
			#15 kmag
			kmag
			;;
		16)
			#16 logisim
			logisim
			;;
		17)
			#17 minisat
			minisat
			;;
		18)
			#18 mysql
			#-mysql-server
			#-mysql-workbench
			mysql
			;;
		19)
			#19 nbtscan
			nbtscan
			;;
		20)
			#20 netbeans
			netbeans
			;;
		21)
			#21 net_tools
			net_tools
			;;
		22)
			#22 nmap
			nmap
			;;
		23)
			#23 ocsinventory
			ocsinventory
			;;
		24)
			#24 octave
			octave
			;;
		25)
			#25 packettracer
			packettracer
			;;
		26)
			#26 php
			php
			;;
		27)
			#27 phpmyadmin
			phpmyadmin
			;;
		28)
			#28 postgresql
			#-postgis
			#-pgadmin
			#-pgadmin3
			#-pgadmin4
			postgresql
			;;
		29)
			#29 project_libre
			project_libre
			;;
		30)
			#30 python
			#-tkinter3
			#-pycharm
			python
			;;
		31)
			#31 ruby
			ruby
			;;
		32)
			#32 scilab
			scilab
			;;
		33)
			#33 ssh
			ssh
			;;
		34)
			#34 star_uml
			star_uml
			;;
		35)
			#35 sublimetext
			sublimetext
			;;
		36)
			#36 systemback
			systemback
			;;
		37)
			#37 traceroute
			traceroute
			;;
		38)
			#38 vim
			vim
			;;
		39)
			#39 virtualbox
			virtualbox
			;;
		40)
			#40 vscode
			vscode
			;;
		41)
			#41 wakeonlan
			wakeonlan
			;;
		42)
			#42 wireshark
			wireshark
			;;
		esac
	done
}
#fim funções principal

#funções de Instalação
#01 apache2
apache2() {
	echo "==============="
	echo "*---apache2---*"
	echo "==============="
	echo -e "\n"
	sudo apt install apache2 -y
}
#02 brackets
brackets() {
	echo "================"
	echo "*---brackets---*"
	echo "================"
	echo -e "\n"
	sudo snap install brackets --classic
}
#03 build_essential
#-gcc
build_essential() {
	sudo apt install build-essential gdb -y
}
#04 docker
docker() {
	echo "========================"
	echo "*---docker&docker.io---*"
	echo "========================"
	echo -e "\n"
	sudo apt install docker -y && apt install docker.io -y
	sudo usermod -a -G docker aluno && service docker restart #[para testar basta digitar docker ps]
}
#05 eclipse
eclipse() {
	echo -e "\n"
	echo "================================="
	echo "*------Instalação Eclipse-------*"
	echo "================================="
	echo -e "\n"
	wget -c https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2022-03/R/eclipse-java-2022-03-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
	sudo tar -zxvf eclipse.tar.gz -C /opt/
	sudo rm eclipse.tar.gz
	echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
	sudo chmod +x /usr/share/applications/eclipse.desktop
	#sudo snap install eclipse --edge --classic
}
#06 etherwake
etherwake() {
	echo "================="
	echo "*---etherwake---*"
	echo "================="
	echo -e "\n"
	sudo apt install etherwake -y
}
#07 evolus_pencil
evolus_pencil() {
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
#08 flashplugin
flashplugin() {
	echo "============================="
	echo "*---flashplugin-installer---*"
	echo "============================="
	echo -e "\n"
	sudo apt-get install flashplugin-installer -y
}
#09 gimp
gimp() {
	echo "=================="
	echo "*------Gimp------*"
	echo "=================="
	echo -e "\n"
	sudo snap install gimp
}
#10 github_desktop
github_desktop() {
	#https://github.com/shiftkey/desktop
	wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc >/dev/null
	sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
	sudo apt-get update
	sudo apt install github-desktop -y
}
#11 gnome_panel
gnome_panel() {
	echo "==================="
	echo "*---gnome-panel---*"
	echo "==================="
	echo -e "\n"
	sudo apt install gnome-panel -y
	gnome-desktop-item-edit /usr/share/applications/ --create-new
}
#12 grub_customizer
grub_customizer() {
	echo "======================="
	echo "*---Grub Customizer---*"
	echo "======================="
	echo -e "\n"
	sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
	sudo apt-get update
	sudo apt-get install grub-customizer -y
}
#13 gtkterm
gtkterm() {
	echo "==============="
	echo "*---gtkterm---*"
	echo "==============="
	echo -e "\n"
	sudo apt install gtkterm -y
}
#14 java
java() {
	echo -e "\n"
	echo "================================="
	echo "*--------Instalação Java--------*"
	echo "================================="
	echo -e "\n"
	#sudo apt install default-jre -y && sudo apt install default-jdk -y
	#wget -c https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.deb -O java.deb
	#sudo dpkg -i java.deb
	#rm java.deb
	sudo apt install openjdk-18-jdk-headless -y
}
#15 kmag
kmag() {
	echo "============"
	echo "*---kmag---*"
	echo "============"
	echo -e "\n"
	sudo apt install kmag -y
}
#16 logisim
logisim() {
	echo "==============="
	echo "*---Logisim---*"
	echo "==============="
	echo -e "\n"
	sudo apt-get install logisim -y
}
#17 minisat
minisat() {
	#wget -c http://mirrors.kernel.org/ubuntu/pool/universe/m/minisat2/minisat_2.2.1-5build2_amd64.deb -O minisat.deb
	#sudo dpkg -i minisat.deb
	#sudo rm minisat.deb
	#sudo apt-get install -f -y
	sudo apt-get install minisat2 -y
}
#18 mysql
#-mysql-server
#-mysql-workbench
mysql() {
	echo "========================"
	echo "*---Instalação mysql---*"
	echo "========================"
	echo -e "\n"
	echo "*********************"
	echo "SENHA DO MYSQL É ifce"
	echo "*********************"
	echo -e "\n"
	sleep 5
	wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
	sudo dpkg -i mysql-apt-config_0.8.22-1_all.deb
	rm mysql-apt-config_0.8.22-1_all.deb
	sudo apt-get update
	sudo apt-get install mysql-client mysql-server mysql-workbench-community -y
	sudo apt update
	sudo apt upgrade -y
}
#19 nbtscan
nbtscan() {
	echo "==============="
	echo "*---nbtscan---*"
	echo "==============="
	echo -e "\n"
	sudo apt install nbtscan -y
}
#20 netbeans
netbeans() {
	echo "==========================="
	echo "*---Instalação netbeans---*"
	echo "==========================="
	echo -e "\n"
	#wget -c https://www.apache.org/dyn/closer.cgi/netbeans/netbeans-installers/13/Apache-NetBeans-13-bin-linux-x64.sh -O netbeans.sh
	#sudo chmod +x netbeans.sh
	#./netbeans.sh
	#sudo rm netbeans.sh
	sudo snap install netbeans --classic
}
#21 net_tools
net_tools() {
	echo "================="
	echo "*---net-tools---*"
	echo "================="
	echo -e "\n"
	sudo apt install net-tools -y
}
#22 nmap
nmap() {
	echo "============"
	echo "*---nmap---*"
	echo "============"
	echo -e "\n"
	sudo apt install nmap -y
}
#23 ocsinventory
ocsinventory() {
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
#24 octave
octave() {
	echo "=============="
	echo "*---octave---*"
	echo "=============="
	echo -e "\n"
	sudo apt install octave -y
}
#25 packettracer
packettracer() {
	echo "==============================="
	echo "*---Instalação PacketTracer---*"
	echo "==============================="
	echo -e "\n"
	#wget -c https://www.dropbox.com/s/86ub8ecs9b8frt5/PacketTracer_731_amd64.deb -O PacketTracer.deb
	#wget -c https://www.dropbox.com/s/vl3i6pyvho1ro23/CiscoPacketTracer_801_Ubuntu_64bit.deb?dl=0 -O PacketTracer.deb
	wget -c https://www.dropbox.com/s/yky2rqk7k2kdmpd/CiscoPacketTracer_811_Ubuntu_64bit.deb?dl=0 -O PacketTracer.deb
	sudo dpkg -i PacketTracer.deb
	rm PacketTracer.deb
	sudo apt-get install -f -y
}
#26 php
php() {
	echo "==========="
	echo "*---php---*"
	echo "==========="
	#sudo apt install php7.4-cli -y
	sudo apt install php-cli -y
}
#27 phpmyadmin
phpmyadmin() {
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
#28 postgresql
#-postgis
#-pgadmin
#-pgadmin3
#-pgadmin4
postgresql() {
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
	ALTER USER postgres WITH PASSWORD 'ifce'
	\q

	echo "==============="
	echo "*---postgis---*"
	echo "==============="
	echo -e "\n"
	sudo apt install postgis -y
	sudo apt install postgresql-13-postgis-3 -y

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
#29 project_libre
project_libre() {
	echo "====================="
	echo "*---project libre---*"
	echo "====================="
	echo -e "\n"
	wget -c https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.9.3/projectlibre_1.9.3-1.deb -O projectlibre.deb
	sudo dpkg -i projectlibre.deb
	sudo rm projectlibre.deb
	sudo apt-get install -f -y
}
#30 python
#-tkinter3
#-pycharm
python() {
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
}
#31 ruby
ruby() {
	echo "============"
	echo "*---ruby---*"
	echo "============"
	echo -e "\n"
	sudo apt install ruby -y
}
#32 scilab
scilab() {
	echo "=================="
	echo "*-----Scilab-----*"
	echo "=================="
	echo -e "\n"
	sudo apt-get update
	sudo apt-get install scilab -y
}
#33 ssh
ssh() {
	echo "==========="
	echo "*---ssh---*"
	echo "==========="
	echo -e "\n"
	sudo apt install openssh-server -y
}
#34 star_uml
star_uml() {
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
	wget -c https://staruml.io/download/releases-v5/StarUML_5.0.1_amd64.deb
	sudo dpkg -i StarUML_5.0.1_amd64.deb
	rm StarUML_5.0.1_amd64.deb
	sudo apt-get install -f -y
}
#35 sublimetext
sublimetext() {
	echo "==================="
	echo "*---sublimetext---*"
	echo "==================="
	echo -e "\n"
	sudo snap install sublime-text --classic
}
#36 systemback
systemback() {
	echo "=================="
	echo "*---systemback---*"
	echo "=================="
	echo -e "\n"
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B
	sudo add-apt-repository "deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main" -y
	sudo apt-get update
	sudo apt-get install systemback -y
}
#37 traceroute
traceroute() {
	echo "=================="
	echo "*---traceroute---*"
	echo "=================="
	echo -e "\n"
	sudo apt install traceroute -y
}
#38 vim
vim() {
	echo "=================="
	echo "*---editor vim---*"
	echo "=================="
	echo -e "\n"
	sudo apt-get install vim -y
}
#39 virtualbox
virtualbox() {
	echo "============================="
	echo "*---Instalação virtualbox---*"
	echo "============================="
	echo -e "\n"
	wget -c https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb -O virtualbox.deb
	sudo dpkg -i virtualbox.deb
	sudo apt-get -f install -y
	sudo rm virtualbox.deb
}
#40 vscode
vscode() {
	echo "========================="
	echo "*---Instalação vscode---*"
	echo "========================="
	echo -e "\n"
	wget -c https://az764295.vo.msecnd.net/stable/8dfae7a5cd50421d10cd99cb873990460525a898/code_1.66.1-1649257842_amd64.deb -O vscode.deb
	sudo dpkg -i vscode.deb
	sudo apt-get -f install -y
	sudo rm vscode.deb
}
#41 wakeonlan
wakeonlan() {
	echo "================="
	echo "*---wakeonlan---*"
	echo "================="
	echo -e "\n"
	sudo apt install wakeonlan -y
}
#42 wireshark
wireshark() {
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
	read opcao

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
sudo rm ubuntu.sh

clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'    Obrigado por usar este serviço      '
'          dev:Alysson Sousa             '
'                                        '
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
