#!/bin/bash
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

wget -c https://download-cdn.jetbrains.com/idea/ideaIC-2022.2.1.tar.gz -O ideaIC.tar.gz
sudo tar -zxvf ideaIC.tar.gz -C /opt/
rm ideaIC.tar.gz

echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=IntelliJ IDEA\nComment=IntelliJ IDEA\nExec=/opt/idea-IC-222.3739.54/bin/idea.sh\nIcon=/opt/idea-IC-222.3739.54/bin/idea.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" | sudo tee /usr/share/applications/IntelliJIDEA.desktop
sudo chmod +x /usr/share/applications/IntelliJIDEA.desktop
rm IntelliJIDEA.sh
