#!/bin/bash

echo "Updating GNU/Linux repositories ..."

apt update

echo "Repositories updated successfuly!"

echo "Installing wget ..."

apt install wget -y

echo "wget installed successfuly"