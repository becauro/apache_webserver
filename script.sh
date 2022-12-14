#!/bin/bash

repo_download_url="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"

echo "Script STARTED"

echo "================================"

echo "Updating GNU/Linux repositories ..."

apt update
apt upgrade -y

echo "GNU/Linux Repositories updated"

echo "================================"

echo "Installing Apache ..."

apt-get install apache2 -y

echo "Apache installed"

echo "================================"

echo "Installing wget ..."

apt install wget -y

echo "wget installed"

echo "================================"

echo "Installing unzip ..."

apt install unzip -y

echo "unzip installed"

echo "================================"

echo "Downloading App ..."

wget -P /tmp $repo_download_url

echo "App downloaded"

echo "================================"

echo "Unziping App ..."

cd /tmp
mkdir app

unzip -d app /tmp/main.zip
cd app/*
rm /tmp/main.zip

echo "App unziped"

echo "================================"

echo "Moving app files into Web Server software"

mv * /var/www/html

echo "App files moved into Web Server software"


echo "Script FINISHED"

$SHELL

