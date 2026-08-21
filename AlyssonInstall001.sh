#!/bin/bash
#autor: Alysson Sousa
#data: 21/08/2026

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 21/08/2026'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
echo -e "
''''''''''''''''''''''''''''''''''''''
'      Dowload da última versão      '
''''''''''''''''''''''''''''''''''''''"
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/snap.sh -O snap.sh
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/ubuntu002.sh -O ubuntu002.sh
sudo chmod +x ubuntu002.sh
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
sudo ./ubuntu002.sh
sudo rm Alyssonlastversion.sh
sudo rm AlyssonInstall002.sh

clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'    Obrigado por usar este serviço      '
'          dev:Alysson Sousa             '
'                                        '
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
