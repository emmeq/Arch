#!/bin/sh

## ::::::::::::
## input config
## ::::::::::::
                
cd ~/.config/MyConfig/Arch/Arch-Post-Install/configs/hypr/
cp input.conf ~/.config/hypr/input.conf

## ::::::::::::
## waybar config
## ::::::::::::

cd ~/.config/MyConfig/Arch/Arch-Post-Install/configs/waybar/
cp config.jsonc ~/.config/waybar/config.jsonc
cp style.css ~/.config/waybar/style.css
