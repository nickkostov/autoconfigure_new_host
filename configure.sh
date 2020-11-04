#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

#installations via dpkg 

install_slack () {
	echo "Slack Installation Begins"
	cd $HOME/Downloads
	wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.10.3-amd64.deb
	sudo dpkg -i slack*
	sudo dpkg-reconfigure --all	
	echo "=============================================================================="
}
install_discord () {
	echo "Discord Installation Begins"
	cd $HOME/Downloads
	wget https://discord.com/api/download?platform=linux&format=deb
	sudo dpkg -i discord*
	sudo dpkg-reconfigure --all
	echo "=============================================================================="
}

install_skype () { 
	echo "Skype Installation Begins"
	cd $HOME/Downloads
	wget https://go.skype.com/skypeforlinux-64.deb
	sudo dpkg -i skype*
	sudo dpkg-reconfigure --all
	echo "=============================================================================="
}

install_chrome () {
	echo "Chrome Installation Begins"
	cd $HOME/Dowloads
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome*
	sudo dpkg-reconfigure --all
	echo "=============================================================================="

}

#installations via apt
install_ssh_server () {
	echo "SSH-Server Installation Begins"
	sudo apt install openssh-server -y
	echo "=============================================================================="
}
install_vim () {
	echo "Vim Installation Begins"
	sudo apt install vim -y
	echo "=============================================================================="
}

install_virtual_box () {
	echo "VirtualBox Installation Begins"
	sudo apt install virtualbox -y
	echo "=============================================================================="
}
install_git () {
	echo "Git Installation Begins"
	sudo apt install git -y
	echo "=============================================================================="
}
install_vscode () {
	echo "VSCode Installation Begins"
	sudo apt install software-properties-common apt-transport-https -y
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install code -y
	echo "=============================================================================="
}

install_steam() {
    echo "Steam Installation Begins"
    sudo apt install steam-installer -y 1>/dev/null 2>&1
    if [[ $? -eq 0 ]];then # if no errors have occured then proceed to install
        steam 1>/dev/null 2>&1 # you have to launch steam to install it ;)
    fi
    if [[ $? -eq 0 ]]; then
        echo -e "${GREEN}[+][+][+] Steam is installed successfully! [+][+][+]${NO_COLOR}"
    else
        echo -e "${RED}[-][-][-] An error occured during the installation of Steam [-][-][-]${NO_COLOR}"
    fi
}

install_extensions () {
	echo "Configuration of GUI Begins"
	sudo apt install gnome-tweaks -y
	echo "=============================================================================="
	sudo apt install gnome-shell-extensions -y
	echo "=============================================================================="
	sudo apt install chrome-gnome-shell -y
	echo "=============================================================================="
	sudo apt install chrome-gnome-shell -y
	echo "=============================================================================="
}

#custom ui from gsettings

make_it_personal () {
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
	gsettings set org.gnome.desktop.interface gtk-theme Yaru-dark
	gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

}

###Dowload of iso files
make_dir () {
	echo "Creating /home${USER}/Iso"
	mkdir ~/ISO
	echo "=============================================================================="
	
        echo "Creating /home/${USER}/Repositories"
        mkdir ~/Repositories
	echo "=============================================================================="
	
        echo "Creating /home/${USER}/Courses"
        mkdir ~/Courses
	echo "=============================================================================="
}

#download_iso () {
#	URL="https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso?_ga=2.191917418.1785140619.1602620046-270242459.1602620046"
#	URL2="http://centos.uni-sofia.bg/centos/8.2.2004/isos/x86_64/CentOS-8.2.2004-x86_64-boot.iso"
#	URL3="https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-live-server-amd64.iso?_ga=2.58656426.1840542408.1602620347-489338066.1602620347"
#	wget $URL -P /home/nick/ISO
#	wget $URL2 -P /home/nick/ISO
#	wget $URL3 -P /home/nick/ISO
#}



### install from functions starts here
install_vim
install_slack
install_vscode
make_dir
install_discord
install_git
install_extensions
make_it_personal
install_chrome
#download_iso
install_skype
install_ssh_server
install_virtual_box
install_steam

PATH=$PATH:/home/${USER}/scripts
