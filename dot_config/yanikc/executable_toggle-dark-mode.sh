#!/usr/bin/env sh
set -euo

niri msg action do-screen-transition

if test "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'prefer-light'"; then
  sed -i 's/catppuccin-latte/catppuccin-frappe/' ~/.config/fuzzel/fuzzel.ini
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
else
  sed -i 's/catppuccin-frappe/catppuccin-latte/' ~/.config/fuzzel/fuzzel.ini
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
fi
