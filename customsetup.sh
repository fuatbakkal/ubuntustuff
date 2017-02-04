#!/bin/sh
sudo dpkg-reconfigure debconf &&
sudo touch /etc/apt/conf.d/99local.conf &&
sudo echo APT::Install-Recommends "0"; > /etc/apt/conf.d/99local.conf &&
sudo chown root:root /etc/apt/conf.d/99local.conf &&
sudo chmod 644 /etc/apt/conf.d/99local.conf &&
sudo add-apt-repository ppa:webupd8team/terminix -y &&
sudo add-apt-repository ppa:no1wantdthisname/ppa -y &&
sudo add-apt-repository ppa:papirus/papirus -y &&
sudo add-apt-repository ppa:paulo-miguel-dias/pkppa -y &&
sudo apt-get update &&
sudo apt-get dist-upgrade &&
sudo apt-get install terminix adwaita-icon-theme-full papirus-icon-theme gdm3 xdg-user-dirs shared-mime-info xdg-user-dirs-gtk libgtk-3-bin dconf-gsettings-backend gvfs gvfs-common gvfs-backends gvfs-fuse gvfs-bin libcolord2 colord dbus-user-session systemd-sysv libglib2.0-data libgtk-3-0 gnome-keyring gnome-bluetooth gnome-control-center pulseaudio rtkit libcanberra-gtk3-0 libcanberra-gtk3-module libcanberra-pulse libcanberra0 realmd ibus ibus-gtk ibus-gtk3 im-config x11-common notification-daemon gnome-shell gstreamer1.0-pulseaudio gstreamer1.0-plugins-base x11-xkb-utils xserver-xorg libpam-gnome-keyring iso-codes mousetweaks network-manager-gnome pulseaudio-module-bluetooth ubuntu-system-service libcanberra-gtk-module unity-control-center-faces ttf-ubuntu-font-family gnome-calculator gnome-calendar evolution-data-server-online-accounts evolution evolution-plugins gnome-color-manager gnome-audio eog eog-plugins evince fonts-cantarell gnome-characters gnome-disk-utility gnome-font-viewer gnome-menus gnome-online-accounts software-properties-gtk gnome-screenshot desktop-base gnome-session session-migration gnome-shell-extensions gnome-tweak-tool gnome-system-log gstreamer1.0-plugins-good gstreamer1.0-x libatk-adaptor gnome-clocks hwdata sessioninstaller nautilus brasero gnome-sushi gstreamer1.0-libav libavcodec-extra57 brasero-cdrkit librsvg2-common totem totem-plugins gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gedit gedit-plugins freetype &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb
