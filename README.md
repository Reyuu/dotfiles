# Rey's dotfiles

## Current setup
![hyfetch](https://github.com/user-attachments/assets/6b4f5a49-3565-4c2b-9c5b-4206faf86d52)

As for other hardware:
- Zaopin Z2mini
- Numphy Air 75 (v1)

> [!NOTE]
> To fix Numphy's F-keys / FN keys simply use:
> ```
> echo 2 | sudo tee -a /sys/module/hid_apple/parameters/fnmode
> ```
> For a pernament fix:
> ```
> echo "options hid_apple fnmode=2" | sudo tee -a /etc/modprobe.d/hid_apple.conf
> sudo update-initramfs -u
> ```

## General
### ZSH
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
```
Add to your .zshrc:
```zsh
source /path/to/antidote/antidote.zsh
antidote load
```

### Fonts and XCursor
```zsh
sudo pacman -S apple-fonts nerd-fonts 
paru -S apple_cursor
```

### GTK theme
```zsh
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
cd WhiteSur-gtk-theme
chmod +x ./install.sh
./install.sh -HD -t all
```

### QT/KDE theme
```zsh
git clone https://github.com/vinceliuice/WhiteSur-kde
cd WhiteSur-kde
chmod +x ./install.sh
./install.sh
```

### Icons
```zsh
git clone https://github.com/vinceliuice/WhiteSur-icon-theme
cd WhiteSur-icon-theme
chmod +x ./install.sh
./install.sh
```

## Waybar

![Waybar screenshot](https://github.com/user-attachments/assets/43c82f80-1911-40e1-b6e5-efa95988687d)

## bemenu

### App launcher

![Worf screenshot](https://github.com/user-attachments/assets/cfe6ec8b-c0ae-42c2-ad1f-3ad61e482d91)

### Power menu

![Worf screenshot](https://github.com/user-attachments/assets/14db8e51-dc33-40bf-8cca-3a8e5ec8e595)

## swayfx

Configured for 2 monitors:

- `DP-2` 1440p@180
- `DP-3` 1080p@60, to the left of `DP-1`, restricted to a single workspace
- `HDMI-A-1` 1080p@60, for the occasional tablet usage

| What         | Program |
| ------------ | ------- |
| Terminal     | wezterm   |
| IDE          | nvim    |
| File manager | thunar  |
| Image viewer | imageviewer  |
| Archiver     | ark     |
| App launcher | bemenu    |
| Power menu   | bemenu    |

### Shortcuts

| Binding                    | Action                           |
| -------------------------- | -------------------------------- |
| `SUPER`                    | Main modifier (MOD)              |
| `MOD + T`                  | Terminal                         |
| `MOD + F`                  | File manager                     |
| `MOD + R`                  | App launcher                     |
| `MOD + ESC`                | Power menu                       |
| `MOD + Q`                  | Kill focused window              |
| `MOD + P`                  | Toggle pseudo tiling             |
| `MOD + J`                  | Toggle pseudo split              |
| `MOD + CTRL + F`           | Toggle force fullscreen          |
| `MOD + V`                  | Toggle floating window           |
| `MOD + LEFT ARROW`         | Move focus left                  |
| `MOD + RIGHT ARROW`        | Move focus right                 |
| `MOD + UP ARROW`           | Move focus up                    |
| `MOD + DOWN ARROW`         | Move focus down                  |
| `MOD + 1..9`               | Move focus to workspace 1..9     |
| `MOD + SHIFT + 1..9`       | Move window to workspace 1..9    |
| `MOD + S`                  | Toggle special workspace         |
| `MOD + SHIFT + S`          | Move window to special workspace |
| `MOD + LEFT MOUSE BUTTON`  | Move (drag) window               |
| `MOD + RIGHT MOUSE BUTTON` | Resize (drag) window             |
| `MOD + W`                  | Show workspace overview          |
| `PRINTSCR`                 | Screenshot region                |
| `CTRL + PRINTSCR`          | Record region                    |
| `SHIFT + PRINTSCR`         | Screenshot current monitor       |
| `ALT + TAB`                | Switch window                    |
| `ALT + SHIFT + TAB`        | Switch to previous window        |
| `MULTIMEDIA KEYS`          | Working as expected              |

## TODO
- update keybindings in the table
