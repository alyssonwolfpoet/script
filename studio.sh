#!/bin/bash
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

wget -c https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.16/android-studio-2021.2.1.16-linux.tar.gz -O android-studio.tar.gz
sudo tar -zxvf android-studio.tar.gz -C /opt/
rm android-studio.tar.gz

echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=Android Studio\nComment=android studio\nExec=/opt/android-studio/bin/studio.sh\nIcon=/opt/android-studio/bin/studio.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" | sudo tee /usr/share/applications/android-studio.desktop
sudo chmod +x /usr/share/applications/android-studio.desktop
rm studio.sh
