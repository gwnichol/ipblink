.PHONY: install
install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 744 ipblink $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/lib/systemd/system
	install -m 644 ipblink.service $(DESTDIR)/usr/lib/systemd/system
