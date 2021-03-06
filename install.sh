#!/bin/bash
set -e


if [[ $UID != "0" ]]; then
	echo "ERROR: You must run this script as root!"
	exit 1
fi

echo "INFO: This script is supposed to be used on Fedora only."
echo "Pressing CTRL+C within three seconds will abort installation."
sleep 3

echo ""
cp bashrc /etc/bashrc && chmod 644 /etc/bashrc
cp bashrc.cust /etc/bashrc.cust && chmod 644 /etc/bashrc.cust
if [[ $1 == "-f" || $1 == "--force"  || ! -f /etc/bashrc.cust.priv ]]; then cp bashrc.cust.priv /etc/bashrc.cust.priv && chmod 644 /etc/bashrc.cust.priv; else echo "WARNING: Skipping bashrc.cust.priv."; fi
echo "Done."