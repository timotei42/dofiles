#!/bin/sh
set -e
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
echo "Delete package manager cache? y/n"
read del
if [[ "$del" = 'Y'  ||  "$del" = 'y' ]]; then 
	sudo apt-get clean
	echo "[*]Cache deleted"
fi
if [[ "$del" = 'N'  ||  "$del" = 'n' ]]; then
	echo "[*]Cache not deleted"
fi
echo "[*]Update over"
