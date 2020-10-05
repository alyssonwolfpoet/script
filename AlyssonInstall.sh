#!/bin/bash
#autor: Alysson Sousa
#data: 05/10/2020
sudo su
#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 05/10/2020'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
echo -e "
''''''''''''''''''''''''''''''''''''''
'      Dowload da última versão      '
''''''''''''''''''''''''''''''''''''''"
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/Alyssonlastversion.sh -O Alyssonlastversion.sh
sudo chmod +x Alyssonlastversion.sh

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

sudo ./Alyssonlastversion.sh
sudo rm Alyssonlastversion.sh
sudo rm AlyssonInstall.sh

clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'    Obrigado por usar este serviço      '
'          dev:Alysson Sousa             '
'                                        '
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5