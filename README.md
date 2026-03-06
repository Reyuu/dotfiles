## Waybar

![Waybar screenshot](https://github.com/user-attachments/assets/ccdf5616-79e7-4429-8654-5e11d0910130)

## Worf

![Worf screenshot](https://github.com/user-attachments/assets/92f9e2b2-7022-4b8b-b02f-fd7105dfa51e)

## Hyprland

UWSM managed setup.

Configured for 2 monitors:

- `DP-1` 1440p@180
- `DP-2` 1080p@60, to the left of `DP-1`, restricted to the workspace 10

| What         | Program |
| ------------ | ------- |
| Terminal     | kitty   |
| File manager | thunar  |
| App launcher | worf    |
| Power menu   | nwg-bar |

### Plugins

- `dynamic-cursors`
- `hyprexpo`

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

## TODO

- `worf` can be used as a power menu
- `layerrule` for `worf` is quite buggy, redo
-
