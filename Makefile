SCRIPT_PATH   = /usr/bin/gnome-awesome
DESKTOP_PATH  = /usr/share/applications/gnome-awesome.desktop
XSESSION_PATH = /usr/share/xsessions/gnome-awesome.desktop
SESSION_PATH  = /usr/share/gnome-session/sessions/awesome.session

install:
	install -m 0755 -D gnome-awesome $(SCRIPT_PATH)
	install -m 0644 -D gnome-awesome.desktop $(DESKTOP_PATH)
	install -m 0644 -D gnome-awesome-xsession.desktop $(XSESSION_PATH)
	install -m 0644 -D awesome.session $(SESSION_PATH)

clean:
	rm -f $(SCRIPT_PATH)
	rm -f $(DESKTOP_PATH)
	rm -f $(XSESSION_PATH)
	rm -f $(SESSION_PATH)

.PHONY: install clean
