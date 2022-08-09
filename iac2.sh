#!/bin/bash

echo "Atualizando o servidor!"
apt-get update
apt-get upgrade -y

echo "Instalando Apache2!"
apt-get install apache2 -y

echo "Instalando Unzip!"
apt-get install unzip -y

echo "Acessando diretório tmp!"
cd /tmp

echo "Fazendo download do repositório do GitHub e descompactando!"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Acessando o diretório do arquivo descompactado!"
cd linux-site-dio-main

echo "Copiando o arquivo para a pasta apache!"
cp -R * /ver/www/html/
