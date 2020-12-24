#!/bin/bash
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install nodejs
install npm
install python3-pip
install openjdk-8-jdk

# Install all scripts in programs/ 
for f in programs/*.sh; do bash "$f" -H; done

# Fun stuff
install figlet
install lolcat
install neofetch

# Fun hello
figlet "Hello!" | lolcat
