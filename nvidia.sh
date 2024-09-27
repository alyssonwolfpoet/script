#!/bin/bash
#https://forums.developer.nvidia.com/t/how-do-i-completly-remove-an-nvidia-driver-by-hand/238053/4
#https://medium.com/@wumeng9028/how-to-uninstall-nvidia-driver-and-install-the-latest-driver-in-ubuntu-96c0b2dc4cc4

dpkg -l | grep -i nvidia
sleep 5
sudo apt-get remove --purge '^nvidia-.*'
sudo apt-get remove --purge '*nvidia*'
sudo apt-get remove --purge '*cuda*'
sudo apt-get install ubuntu-desktop

echo 'nouveau' | sudo tee -a /etc/modules
sudo rm /etc/X11/xorg.conf

sudo rm /etc/X11/xorg.conf
sudo rm /etc/modprobe.d/blacklist-nouveau.conf
sudo rm -rf /usr/local/cuda*
sudo update-initramfs -k all -u

sudo apt-get purge nvidia-current

sudo apt-get autoremove --purge
sudo apt autoremove
sudo apt autoclean

find /usr/lib -iname "*nvidia*"
sudo find /usr/lib -iname "*nvidia*470\.86" -delete
sudo find /usr/lib -iname "*nvidia*" -delete
sudo find /usr/lib -iname "*nvidia*\.ko" -delete


wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-6
sudo apt-get -y install -y nvidia-open
sudo apt-get -y install -y cuda-drivers

curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list   
sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit


sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
nvidia-ctk runtime configure --runtime=docker --config=$HOME/.config/docker/daemon.json
sudo systemctl restart docker
sudo nvidia-ctk config --set nvidia-container-cli.no-cgroups --in-place

echo  -e "#accept-nvidia-visible-devices-as-volume-mounts = false
#accept-nvidia-visible-devices-envvar-when-unprivileged = true
disable-require = false
supported-driver-capabilities\ncompat32,compute,display,graphics,ngx,utility,video
#swarm-resource = DOCKER_RESOURCE_GPU

[nvidia-container-cli]
#debug = /var/log/nvidia-container-toolkit.log
environment = []
#ldcache = /etc/ld.so.cache
ldconfig = @/sbin/ldconfig.real
load-kmods = true
no-cgroups = false
#path = /usr/bin/nvidia-container-cli
#root = /run/nvidia/driver
#user = root:video

[nvidia-container-runtime]
#debug = /var/log/nvidia-container-runtime.log
log-level = info
mode = auto
runtimes = [docker-runc, runc, crun]

[nvidia-container-runtime.modes]

[nvidia-container-runtime.modes.cdi]
annotation-prefixes = [cdi.k8s.io/]
default-kind = nvidia.com/gpu
spec-dirs = [/etc/cdi, /var/run/cdi]

[nvidia-container-runtime.modes.csv]
mount-spec-path = /etc/nvidia-container-runtime/host-files-for-container.d

[nvidia-container-runtime-hook]
path = nvidia-container-runtime-hook
skip-mode-detection = false

[nvidia-ctk]
path = nvidia-ctk
" > /etc/nvidia-container-runtime/config.toml


