#!/bin/bash
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

wget -c https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.3.1.18/android-studio-2023.3.1.18-linux.tar.gz -O android-studio.tar.gz
tar -zxvf android-studio.tar.gz

rm android-studio.tar.gz

echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nName=Android Studio Dolphin\nComment=Android Studio Iguana\nExec=/home/$USER/android-studio/bin/studio.sh\nIcon=/home/$USER/android-studio/bin/studio.png\nType=Application\nTerminal=false\nStartupNotify=true\nCategories=Application" |tee /home/$USER/.local/share/applications/android-studio.desktop
chmod +x /.local/share/applications/android-studio.desktop
rm studio.sh

