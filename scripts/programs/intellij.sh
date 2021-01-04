#!/bin/bash

# IntelliJ Idea Community
# https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-intellij-idea-on-ubuntu-18-04-linux-mint-19.html

echo "Install IntelliJ (y/n)?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	wget https://download-cf.jetbrains.com/idea/ideaIC-2020.1.tar.gz
	tar -zxvf ideaIC-*.tar.gz
    sudo mkdir /opt/idea/
    sudo chmod 777 /opt/idea/
    mv idea-*/* /opt/idea/
    cd /opt/idea/bin/
    sh idea.sh
else 
	echo "🏃️ skipping..."
fi
