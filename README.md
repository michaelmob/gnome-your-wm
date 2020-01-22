# GNOME/Your-WM

Use [GNOME 3](https://www.gnome.org/gnome-3/) services with any window manager
of your choosing.

## Required Packages
* make
* gnome
* gnome-flashback
* gnome-screensaver
* polkit-gnome

## Installation
```sh
sudo make install
```

## Configuration
```sh
# $XDG_CONFIG_HOME/gnome-your-wm/run
#!/usr/bin/env sh

# compositor
picom &

# window manager
i3
awesome
bspwm
```
