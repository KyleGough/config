# Personal Manjaro Post-Installation Setup.
# Created by Kyle Gough.

#|----------------------------------------------|#
#| 1) Establish Internet Connection.            |#  
#|----------------------------------------------|#
nmtui

#|----------------------------------------------|#
#| 2) Change Hostname.                          |#
#|----------------------------------------------|#
sudo vim /etc/hostname

#|----------------------------------------------|#
#| 3) Configure Git Config.                     |#
#|----------------------------------------------|#
git config --global user.name "Kyle Gough"
git config --global user.email "example@abc.com"

#|----------------------------------------------|#
#| 4) Update Package Manager.                   |#
#|----------------------------------------------|#
sudo pacman -Syu

#|----------------------------------------------|#
#| 5) Configure ZSH Shell as default.           |#
#|----------------------------------------------|#
sudo pacman -S zsh
chsh -s /usr/bin/zsh
# Restart session to apply changes.

#|----------------------------------------------|#
#| 6) Download Custom Configuration Repo.       |#
#|----------------------------------------------|#
cd ~/Documents
git clone https://www.github.com/KyleGough/config.git
rm ~/.vimrc
rm ~/.zshrc
cd config
ln .zshrc ~/.zshrc
ln .vimrc ~/.vimrc
touch ~/Documents/todo

#|----------------------------------------------|#
#| 7) Apply i3 config files.                    |# 
#|----------------------------------------------|#
sudo rm ~/.i3/config
sudo rm /etc/i3status.conf 
sudo ln i3/i3 ~/.i3/config
sudo ln i3/i3status.conf /etc/i3status.conf
sudo pacman -S py3status
# Reload i3 with $mod+SHIFT+R

#|----------------------------------------------|#
#| 8) Neofetch.                                 |#
#|----------------------------------------------|#
sudo pacman -S neofetch
rm ~/.config/neofetch/config.conf
ln neofetch.conf ~/.config/neofetch/config.conf

#|----------------------------------------------|#
#| 9) mgitstatus.                               |#
#|----------------------------------------------|#
cd ~
mkdir .misc
cd .misc
git clone https://github.com/fboender/multi-git-status.git
cd multi-git-status
sudo ./install.sh

#|----------------------------------------------|#
#| 10) Load Scripts and Aliases.                |#
#|----------------------------------------------|#
source ~/.zshrc
reload

#|----------------------------------------------|#
#| 11) Install Applications/Packages.           |#
#|----------------------------------------------|#

# Browser.
sudo pacman -S firefox

# Markdown Editor.
pamac build typora

# Screenshots.
sudo pacman -S deepin-screenshot

# Notes.
pamac build simplenote-electron-bin

# Fancy Terminal
sudo pacman -S cool-retro-term

# Developer Tools
sudo pacman -S code
sudo pip install pipenv
pamac build drawio-desktop

# Audio
sudo pacman -S playerctl
sudo pacman -S pulseaudio
pamac build spotify

# Passwords
sudo pacman -S keepassxc

# Torrenting
sudo pacman -S qbittorrent
mkdir ~/Downloads/torrents

# Games.
pamac build clonehero

# Virtualization.
# See: https://wiki.manjaro.org/index.php?title=VirtualBox