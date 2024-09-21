# install extras script fedora edition

# paths/variables
dfextra=$HOME/dotfiles/.extra


#  _________  _   _
# |__  / ___|| | | |
#   / /\___ \| |_| |
#  / /_ ___) |  _  |
# /____|____/|_| |_|

# install zsh
sudo dnf install zsh
# install eza (replaces ls)
sudo dnf install eza
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # you may have to run the script again after this one
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


#  ____
# |  _ \ _ __ ___   __ _ ___
# | |_) | '__/ _ \ / _` / __|
# |  __/| | | (_) | (_| \__ \
# |_|   |_|  \___/ \__, |___/
#                  |___/

# pywal
pip3 install pywal
# waypaper
sudo dnf copr enable solopasha/hyprland # enable repo for waypaper
sudo dnf install waypaper
# nmcli and nmtui
sudo dnf install NetworkManager-tui


#  _____ _
# |_   _| |__   ___ _ __ ___   ___  ___
#   | | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
#   | | | | | |  __/ | | | | |  __/\__ \
#   |_| |_| |_|\___|_| |_| |_|\___||___/

# breeze-gtk
sudo dnf install breeze-gtk
