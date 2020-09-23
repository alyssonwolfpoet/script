#!/bin/bash
#autor: Alysson Sousa
#data: 23/09/2020

#Créditos
clear
echo -e "
''''''''''''''''''''''''''''''''''''''''''
'Programa:Script de Programas            '
'Desenvolvedor:Alysson Sousa            ''
'Data de última modificação: 23/09/2020'''
''''''''''''''''''''''''''''''''''''''''''
"
sleep 5
echo -e "
''''''''''''''''''''''''''''''''''''''
'      Dowload da última versão      '
''''''''''''''''''''''''''''''''''''''"
wget -c https://raw.githubusercontent.com/alyssonwolfpoet/script/master/Alyssonlastversion.sh -O Alyssonlastversion.sh
sudo chmod +x Alyssonlastversion.sh
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