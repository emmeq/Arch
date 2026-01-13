#!/bin/bash
set -e

omarchy-webapp-remove HEY
omarchy-webapp-remove Basecamp  
omarchy-webapp-remove WhatsApp
omarchy-webapp-remove "Google Photos"
omarchy-webapp-remove "Google Contacts" 
omarchy-webapp-remove "Google Messages"
omarchy-webapp-remove "Google Maps"
omarchy-webapp-remove ChatGPT
omarchy-webapp-remove YouTube
omarchy-webapp-remove GitHub
omarchy-webapp-remove X
omarchy-webapp-remove Figma
omarchy-webapp-remove Discord
omarchy-webapp-remove Zoom
omarchy-webapp-remove Fizzy

sudo pacman -Rns 1password-beta 1password-cli aether obs-studio obsidian kdenlive github-cli


sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub app.zen_browser.zen dev.vencord.Vesktop com.obsproject.Studio org.prismlauncher.PrismLauncher com.github.tchx84.Flatseal



# Technorino
mkdir -p ~/Apps ~/.local/share/icons
wget -O ~/Apps/Technorino-x86_64.AppImage "https://github.com/2547techno/technorino/releases/download/nightly-build/Chatterino-x86_64.AppImage"
chmod +x ~/Apps/Technorino-x86_64.AppImage
wget -O ~/.local/share/icons/technorino.svg "https://chatterino.com/logo.svg"

cat > ~/.local/share/applications/technorino.desktop << 'EOF'
[Desktop Entry]
Name=Technorino
Exec=%h/Apps/Technorino-x86_64.AppImage
Icon=technorino
Type=Application
Categories=Network;Chat;
EOF
