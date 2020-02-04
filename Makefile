PKGNAME ?= gnome-your-wm
PKGVER  ?= 0

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

SCRIPT_PATH   = $(PREFIX)/bin/gnome-your-wm
DESKTOP_PATH  = $(PREFIX)/share/applications/gnome-your-wm.desktop
XSESSION_PATH = $(PREFIX)/share/xsessions/gnome-your-wm.desktop
SESSION_PATH  = $(PREFIX)/share/gnome-session/sessions/gnome-your-wm.session

install:
	$(INSTALL) -m 0755 -D gnome-your-wm $(SCRIPT_PATH)
	$(INSTALL) -m 0644 -D gnome-your-wm.desktop $(DESKTOP_PATH)
	$(INSTALL) -m 0644 -D gnome-your-wm-xsession.desktop $(XSESSION_PATH)
	$(INSTALL) -m 0644 -D gnome-your-wm.session $(SESSION_PATH)

uninstall:
	rm -f $(SCRIPT_PATH)
	rm -f $(DESKTOP_PATH)
	rm -f $(XSESSION_PATH)
	rm -f $(SESSION_PATH)

package:
	tar -cvzf $(PKGNAME)-$(PKGVER).tar.gz \
		--transform 's,^,$(PKGNAME)-$(PKGVER)/,' \
		PKGBUILD LICENSE Makefile README.md gnome-your-wm \
		gnome-your-wm.desktop gnome-your-wm-xsession.desktop \
		gnome-your-wm.session

clean:
	rm -f $(PKGNAME)-*.tar.gz

.PHONY: install uninstall
