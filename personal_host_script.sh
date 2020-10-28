install_vim () {
	sudo apt install vim -y
}

install_virtual_box () {
	sudo apt install virtualbox -y
}
install_slack () {
	sudo snap install slack --classic
}

install_vscode () {
	sudo snap install code --classic
}

make_dir () {

	mkdir /home/nick/ISO
	mkdir /home/nick/Repositories
	mkdir /home/nick/Courses
}

install_discord () {
	sudo snap install discord
}

install_git () {
	sudo apt install git -y
}
install_extensions () {
	sudo apt install gnome-tweaks -y
	sudo apt install gnome-shell-extensions -y
	sudo apt install chrome-gnome-shell -y
}

make_it_personal () {
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
}

#Uncomment if you want ubuntu, centos and ubuntu server image
#download_iso () {
#	URL="https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso?_ga=2.191917418.1785140619.1602620046-270242459.1602620046"
#	URL2="http://centos.uni-sofia.bg/centos/8.2.2004/isos/x86_64/CentOS-8.2.2004-x86_64-boot.iso"
#	URL3="https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-live-server-amd64.iso?_ga=2.58656426.1840542408.1602620347-489338066.1602620347"
#	wget $URL -P /home/nick/ISO
#	wget $URL2 -P /home/nick/ISO
#	wget $URL3 -P /home/nick/ISO
#}
install_skype () { 
	sudo snap install skype --classic
}
install_ssh_server () {
	sudo apt install openssh-server -y
}


install_vim
install_slack
install_vscode
make_dir
install_discord
install_git
install_extensions
make_it_personal
#download_iso
install_skype
install_ssh_server
install_virtual_box
