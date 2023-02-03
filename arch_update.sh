#!/bin/bash

echo -n "[*]Update signatures?(y/n)"
read SIGN

if [[ $SIGN == *y* ]] || [[ $SIGN == *Y* ]]
then 
	pacman -Sy archlinux-keyring
	pacman-key --populate archlinux
	pacman-key --refresh-keys
fi

echo -n "[*]Updating system.."
pacman -Syyu

echo -n "[*] Empty cache?(y/n)"
read CACHE

if [[ $CACHE == *y* ]] || [[ $CACHE == *Y* ]] 
then 
	pacman -Scc
fi
echo -n "[*]Finished" 
	




