#!/bin/bash
set -e

echo "🚀 Post-Omarchy Setup"

sudo pacman -Syu
sudo pacman -S --noconfirm git

# Flatpaks
sudo pacman -S --noconfirm flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.zen_browser.zen com.vencord.Vesktop com.obsproject.Studio org.prismlauncher.PrismLauncher

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

# Configs deployen
if [[ -d "configs" ]]; then
    cp -r configs/waybar/*      ~/.config/waybar/     2>/dev/null || true
    cp -r configs/hypr/*        ~/.config/hypr/       2>/dev/null || true
    cp configs/uwsm/default     ~/.config/uwsm/default 2>/dev/null || true
    killall waybar 2>/dev/null || true
    waybar &
    hyprctl reload
fi

echo 'export PATH="$HOME/Apps:$PATH"' >> ~/.bashrc

echo "✅ Fertig. Reboot in 5 Sekunden..."
sudo reboot

