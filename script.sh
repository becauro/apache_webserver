#!/bin/bash

echo "Script STARTED"

echo "================================"

echo "Updating GNU/Linux repositories ..."

apt update

echo "Repositories updated"

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

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "App downloaded"

echo "Script FINISHED"

