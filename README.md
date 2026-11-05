## Pacman
```sudo pacman -S alacritty btop firefox pavucontrol pamixer playerctl hyprland hyprpaper flameshot rofi nautilus swaync xdg-desktop-portal xdg-desktop-portal-hyprland grim slurp```

## AUR
amneziavpn-bin

## DankShell
Install DankShell via 
```curl -fsSL https://install.danklinux.com | sh```

```
rm -rf $HOME/.config
cp -r $HOME/hyprDotfiles/.config $HOME/
```

## perms
```aiignore
chmod +x $HOME/.config/rofi/bin/drun
chmod +x $HOME/.local/bin/*
```

### Flameshot
```aiignore
mkdir -p ~/.config/xdg-desktop-portal
nano ~/.config/xdg-desktop-portal/hyprland-portals.conf
```
```
[preferred]
default=hyprland;gtk
org.freedesktop.portal.Screenshot=hyprland
```
```aiignore
systemctl --user stop xdg-desktop-portal-hyprland
systemctl --user stop xdg-desktop-portal
systemctl --user start xdg-desktop-portal-hyprland
```

### Audio
```aiignore
sudo pacman -Rsn pulseaudio pulseaudio-alsa --noconfirm 2>/dev/null
sudo pacman -S pipewire pipewire-audio pipewire-alsa pipewire-pulse wireplumber pavucontrol

```



~~Dms shell files (Dog)~~
```
sudo cp -r $HOME/hyprDotfiles/dms /etc/xdg/quickshell/
```
