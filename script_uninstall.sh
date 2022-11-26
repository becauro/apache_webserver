#!/bin/bash

echo "STARTED remove script"

systemctl stop apache2
rm -r /tmp/app
rm -r /var/www/html/*
apt purge apache2 -y
apt purge unzip -y
apt purge wget -y

echo "FINISHED remove script"