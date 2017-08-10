#!/bin/bash
if [ $(whoami) != root ]; then
	echo "ERROR: You must run this script as root!"
	exit
fi

echo "WARNING: This script is supposed to be used on Fedora only."
echo "Pressing CTRL+C within three seconds will abort installation."
sleep 3

cp bashrc /etc/bashrc && chmod 644 /etc/bashrc
cp bashrc.cust /etc/bashrc.cust && chmod 644 /etc/bashrc.cust
echo "Done."
