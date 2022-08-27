#!/bin/bash

echo "atualiza servidor"

apt-get update
apt-get upgrade -y

echo "instalando apache2"
apt-get install apache2 -y

echo "instalando unzip"
apt-get install unzip -y

echo "faz download dos arquivos no site github e descompacta dentro "
"da pasta temp para depois copiar o conteudo para o diretorio do apache2"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

