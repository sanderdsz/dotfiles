#!/bin/bash

# Bpytop
# https://github.com/aristocratos/bpytop

echo "Install Bpytope (y/n)?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	echo "👍️ installing Sbpytop"
	echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
	wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
	sudo apt update
	sudo apt install bpytop
else 
	echo "🏃️ skipping..."
fi