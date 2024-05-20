#!/bin/bash
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install python3-pip -y
sudo apt-get install python3-tk -y

wget -c https://download-cdn.jetbrains.com/python/pycharm-community-2024.1.1.tar.gz -O pycharm.tar.gz
tar -xzvf pycharm.tar.gz
mv pycharm-community-2024.1.1 pycharm
rm pycharm.tar.gz
echo -e "[Desktop Entry]\n Version=1.0\n Name=pycharm\n Exec=/home/$USER/pycharm/bin/pycharm.sh\n Icon=/home/$USER/pycharm/bin/pycharm.png\n Type=Application\n Categories=Application" | sudo tee /home/$USER/.local/share/applications/pycharm.desktop

chmod +x /.local/share/applications/pycharm.desktop
