SCRIPT_PATH   = /usr/bin/gnome-your-wm
DESKTOP_PATH  = /usr/share/applications/gnome-your-wm.desktop
XSESSION_PATH = /usr/share/xsessions/gnome-your-wm.desktop
SESSION_PATH  = /usr/share/gnome-session/sessions/gnome-your-wm.session

install:
	install -m 0755 -D gnome-your-wm $(SCRIPT_PATH)
	install -m 0644 -D gnome-your-wm.desktop $(DESKTOP_PATH)
	install -m 0644 -D gnome-your-wm-xsession.desktop $(XSESSION_PATH)
	install -m 0644 -D gnome-your-wm.session $(SESSION_PATH)

clean:
	rm -f $(SCRIPT_PATH)
	rm -f $(DESKTOP_PATH)
	rm -f $(XSESSION_PATH)
	rm -f $(SESSION_PATH)

.PHONY: install clean
