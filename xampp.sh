#!/bin/bash
#https://www.edivaldobrito.com.br/como-instalar-o-xampp-no-linux/
wget -c https://sonik.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.0.28/xampp-linux-x64-8.0.28-0-installer.run -O xampp-installer.run
chmod +x xampp-installer.run
sudo ./xampp-installer.run

echo -e '[Desktop Entry]\n Version=1.0\n Name=xampp\n Exec=gksudo /opt/lampp/manager-linux-x64.run\n Icon=/opt/lampp/icons/world1.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/xampp.desktop
#sudo apt-get install gksu
sudo chmod +x /usr/share/applications/xampp.desktop
cp /usr/share/applications/xampp.desktop  ~/Área\ de\ Trabalho/
cp /usr/share/applications/xampp.desktop ~/Desktop