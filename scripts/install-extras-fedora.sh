# install extras script fedora edition

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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# you may have to run the script again here
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
# get 4 recommended fonts for p10k in terminal, move to fonts directory under 'm'
wget -P $HOME/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
mv $HOME/Downloads/MesloLGS\ NF\ Regular.ttf $HOME/.fonts/m
wget -P $HOME/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
mv $HOME/Downloads/MesloLGS\ NF\ Bold.ttf $HOME/.fonts/m
wget -P $HOME/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
mv $HOME/Downloads/MesloLGS\ NF\ Italic.ttf $HOME/.fonts/m
wget -P $HOME/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
mv $HOME/Downloads/MesloLGS\ NF\ Bold\ Italic.ttf $HOME/.fonts/m
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
