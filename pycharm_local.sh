#!/bin/bash
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

wget -c https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.2.1.23/android-studio-2023.2.1.23-linux.tar.gz -O android-studio.tar.gz
tar -zxvf android-studio.tar.gz

rm android-studio.tar.gz

echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=Android Studio Dolphin\nComment=Android Studio Iguana\nExec=/home/$USER/android-studio/bin/studio.sh\nIcon=/home/$USER/android-studio/bin/studio.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" |tee /home/$USER/.local/share/applications/android-studio.desktop
chmod +x /.local/share/applications/android-studio.desktop


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
	#sudo snap install pycharm-community --classic
	#flatpak install flathub com.jetbrains.PyCharm-Community -y
	wget -c https://download-cdn.jetbrains.com/python/pycharm-community-2024.1.1.tar.gz -O pycharm.tar.gz
	sudo tar -xzvf pycharm.tar.gz
	sudo mv pycharm-community-2024.1.1 /opt/pycharm
	sudo rm pycharm.tar.gz
	echo -e '[Desktop Entry]\n Version=1.0\n Name=pycharm\n Exec=/home/$USER/pycharm/bin/pycharm.sh\n Icon=/home/$USER/pycharm/bin/pycharm.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/pycharm.desktop
	sudo chmod +x /usr/share/applications/pycharm.desktop
