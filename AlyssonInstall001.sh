#!/bin/bash
#autor: Alysson Sousa
#data: 27/09/2024

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 24/09/2024'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
echo -e "
''''''''''''''''''''''''''''''''''''''
'      Dowload da última versão      '
''''''''''''''''''''''''''''''''''''''"
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/snap.sh -O snap.sh
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/ubuntu001.sh -O ubuntu001.sh
sudo chmod +x ubuntu001.sh
sudo chmod +x snap.sh

echo -e "
''''''''''''''''''''''''''''''''''''''
'           Iniciando em 5           '
''''''''''''''''''''''''''''''''''''''"
sleep 1
echo -e "4"
sleep 1
echo -e "3"
sleep 1
echo -e "2"
sleep 1
echo -e "1"
sleep 1

sudo ./snap.sh
sudo ./ubuntu001.sh
sudo rm Alyssonlastversion.sh
sudo rm AlyssonInstall001.sh

clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'    Obrigado por usar este serviço      '
'          dev:Alysson Sousa             '
'                                        '
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
