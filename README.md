# GNOME/Your-WM

Use [GNOME 3](https://www.gnome.org/gnome-3/) services with any window manager
of your choosing.

## Required Packages
* make
* gnome
* gdm
* gnome-flashback
* gnome-screensaver
* polkit-gnome

### Arch Linux
```sh
sudo pacman -Syy make gnome gnome-flashback gnome-screensaver polkit-gnome
```

## Installation
```sh
git clone https://github.com/thetarkus/gnome-your-wm && cd ./gnome-your-wm && sudo make install
```

## Configuration
The run command file should be an executable (+x) script located at
`$XDG_CONFIG_HOME/gnome-your-wm/run`.
```sh
#!/usr/bin/env sh

# autostart applications
picom &
redshift &
imwheel &

# window manager
i3
```

## Usage
Select `Gnome + WM` as your desktop environment in your display manager.

## Logs
Should any issues arise, check your system logs for messages with the tag:
`gnome-your-wm`.
