#!/bin/bash

repo_download_url="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"

echo "Script STARTED"

echo "================================"

echo "Updating GNU/Linux repositories ..."

apt update

echo "Repositories updated"

echo "================================"

echo "Installing wget ..."

apt install wget -y $repo_download_url

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

mkdir app

unzip -d app /tmp/main.zip
cd app/*

echo "App unziped"

echo "Script FINISHED"

$SHELL

