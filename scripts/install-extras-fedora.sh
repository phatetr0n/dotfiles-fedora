# install extras script fedora edition

# paths/variables
dfextra=$HOME/dotfiles/.extra


#  _________  _   _
# |__  / ___|| | | |
#   / /\___ \| |_| |
#  / /_ ___) |  _  |
# /____|____/|_| |_|
#
# ZSH

# install zsh
sudo dnf -y install zsh
# install eza (replaces ls)
sudo dnf -y install eza
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && ./install-extras-fedora.sh # you may have to run the script again after this one
# clone oh-my-zsh plugins into their proper place
sudo git clone https://github.com/chrissicool/zsh-256color ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-256color # zsh-256color
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting # zsh-syntax-highlighting
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k # oh-my-zsh p10k install


#  _____           _
# |  ___|__  _ __ | |_ ___
# | |_ / _ \| '_ \| __/ __|
# |  _| (_) | | | | |_\__ \
# |_|  \___/|_| |_|\__|___/
#
#Fonts

# create fonts and sorting directories
mkdir $HOME/.fonts
mkdir $HOME/.fonts/m
# copy fonts from .extra and place in new font directories
cp $dfextra/MesloLGS*.ttf $HOME/.fonts/m
# create .font.config file
echo "<?xml version=\"1.0\"?><!DOCTYPE fontconfig SYSTEM \"fonts.dtd\">
<fontconfig>
 <dir>~/.fonts</dir>
</fontconfig>" > $HOME/.fonts.config


#  ____            _
# / ___| _   _ ___| |_ ___ _ __ ___
# \___ \| | | / __| __/ _ \ '_ ` _ \
#  ___) | |_| \__ \ ||  __/ | | | | |
# |____/ \__, |___/\__\___|_| |_| |_|
#        |___/
# System

# pywal
pip3 install pywal
# enable repo for waypaper and hyprland, then install waypaper
sudo dnf -y copr enable solopasha/hyprland
sudo dnf -y install waypaper
# nmcli and nmtui
sudo dnf -y install NetworkManager-tui
# enable repo for swaync, then install
sudo dnf -y copr enable erikreider/SwayNotificationCenter
sudo dnf -y install SwayNotificationCenter
# nwg-displays clone + install
sudo git clone https://github.com/nwg-piotr/nwg-displays /opt/nwg-displays
cd /opt/nwg-displays
sudo ./install.sh

#  _____ _
# |_   _| |__   ___ _ __ ___   ___  ___
#   | | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
#   | | | | | |  __/ | | | | |  __/\__ \
#   |_| |_| |_|\___|_| |_| |_|\___||___/
#
# Themes

# breeze-gtk
sudo dnf -y install breeze-gtk
