#!/bin/bash
#sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

wget -c https://download-cdn.jetbrains.com/idea/ideaIC-2023.3.6.tar.gz -O ideaIC.tar.gz
tar -zxvf ideaIC.tar.gz
mv idea-IC-233.15026.9/ IntelliJIDEA
rm ideaIC.tar.gz

echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=IntelliJ IDEA\nComment=IntelliJ IDEA\nExec=/home/$USER/IntelliJIDEA/bin/idea.sh\nIcon=/home/$USER/IntelliJIDEA/bin/idea.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" |tee /home/$USER/.local/share/applications/IntelliJIDEA.desktop
chmod +x /.local/share/applications/IntelliJIDEA.desktop
rm IntelliJIDEA.sh

