#!/bin/bash
#https://www.edivaldobrito.com.br/como-instalar-o-xampp-no-linux/
wget -c https://sonik.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.0.28/xampp-linux-x64-8.0.28-0-installer.run -O xampp-installer.run
chmod +x xampp-installer.run
sudo ./xampp-installer.run
echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=xampp\nComment=xampp\nExec=/opt/lampp/manager-linux-x64.run\nIcon=/opt/lampp/htdocs/favicon.ico\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" | sudo tee /usr/share/applications/xampp.desktop
#sudo apt-get install gksu
sudo chmod +x /usr/share/applications/xampp.desktop
cp /usr/share/applications/xampp.desktop  ~/Área\ de\ Trabalho/
cp /usr/share/applications/xampp.desktop ~/Desktop