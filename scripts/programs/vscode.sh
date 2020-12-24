#!/bin/bash

# Visual Studio Code
# https://code.visualstudio.com/docs/?dv=linux64_deb

echo "Install Vscode (y/n)?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt install apt-transport-https
	sudo apt update
	sudo apt install code
else 
	echo "🏃️ skipping..."
fi
