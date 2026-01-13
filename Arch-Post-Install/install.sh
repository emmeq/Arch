#!/bin/sh

set -e    #error check
echo "clone started"

sudo pacman -S --noconfirm git


mkdir -p ~/.config/MyConfig
echo "myconfig folder created!"


cd ~/.config/MyConfig
git clone https://github.com/emmeq/Arch.git


cd ~/.config/MyConfig/Arch/Arch-Post-Install && chmod +x install_config.sh && ./install_config.sh && chmod +x apps.sh && ./apps.sh && sudo reboot
