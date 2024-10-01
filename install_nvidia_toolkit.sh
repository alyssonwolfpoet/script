#!/bin/bash

# Script to install NVIDIA Container Toolkit on Ubuntu

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting NVIDIA Container Toolkit installation..."

# Add the NVIDIA package repository
echo "Configuring NVIDIA repository..."
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
  sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

# Optionally enable experimental packages
# Uncomment the following line if you want to use experimental packages
# sudo sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list

# Update package list
echo "Updating package list..."
sudo apt-get update

# Install NVIDIA Container Toolkit
echo "Installing NVIDIA Container Toolkit..."
sudo apt-get install -y nvidia-container-toolkit

# Configure Docker to use the NVIDIA Container Runtime
echo "Configuring Docker runtime..."
sudo nvidia-ctk runtime configure --runtime=docker

# Restart the Docker daemon
echo "Restarting Docker daemon..."
sudo systemctl restart docker

echo "NVIDIA Container Toolkit installation and configuration complete."
