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

## Installation
```sh
sudo make install
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

Should any issues arise, check your system logs for messages with the tag:
`gnome-your-wm`.
