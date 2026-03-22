# Rey's dotfiles

## Current setup
![fastfetch](https://github.com/user-attachments/assets/cf7e602a-d203-4927-8eef-6d9c16062f38)

Switched to Artix Linux to avoid systemd. That means this is no longer `uwsm` managed setup, `$launch_app` variable is still available in Hyprland config, if you'd rather do that.

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

### Hyprcursor
```zsh
git clone https://github.com/6ooker/apple_hyprcursor
cd apple_hyprcursor
chmod +x ./build.sh
./build.sh
tar -xvf macOS-hypr.tar.xz
mv macOS-hypr ~/.local/share/icons/
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

![Waybar screenshot](https://github.com/user-attachments/assets/c24c0aa3-1083-4e9c-96df-36680b463249)

## Worf

### App launcher

![Worf screenshot](https://github.com/user-attachments/assets/92f9e2b2-7022-4b8b-b02f-fd7105dfa51e)

### Power menu

![Worf screenshot](https://github.com/user-attachments/assets/9ab9c8e5-3f4e-498c-8e6a-e4e1af5a328a)

## Hyprland

Configured for 2 monitors:

- `DP-1` 1440p@180
- `DP-2` 1080p@60, to the left of `DP-1`, restricted to the workspace 10

| What         | Program |
| ------------ | ------- |
| Terminal     | kitty   |
| File manager | thunar  |
| App launcher | worf    |
| Power menu   | worf    |

### Hyprland plugins

- `dynamic-cursors`
- `hyprexpo`
- `hypr-darkwindow`

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
| `ALT + M`                  | Minimize window                  |
| `ALT + SHIFT + M`          | Maximize all windows             |
| `MOD + .`                  | Emoji input                      |
| `MOD + D`                  | Force non-transparent window     |

## TODO

- some fonts have aliasing when viewed on lighter background (side effect of chromakey)
