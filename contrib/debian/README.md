
Debian
====================
This directory contains files used to package bitcoinbridged/bitcoinbridge-qt
for Debian-based Linux systems. If you compile bitcoinbridged/bitcoinbridge-qt yourself, there are some useful files here.

## bitcoinbridge: URI support ##


bitcoinbridge-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinbridge-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinbridge-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinbridge128.png` to `/usr/share/pixmaps`

bitcoinbridge-qt.protocol (KDE)

