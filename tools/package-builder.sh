#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <package_path>"
    exit 1
fi

# Change to the specified directory
cd "$1" || exit 1

pacman -S --needed --noconfirm i3-wm polybar rofi

# Run updpkgsums
updpkgsums

# Run makepkg with options and install the package
makepkg -sicfr --noconfirm

# Get the name of the built package
PACKAGE_NAME=$(basename arse-desktop-*.pkg.tar.zst)

# Move the resulting package to the target directory
mkdir -p ../arselinux/x86_64/
mv $PACKAGE_NAME /usr/src/app/arselinux/x86_64/
cd ../arselinux/x86_64/

# Run repo-add to update the package database
cd /usr/src/app/arselinux/x86_64/
repo-add arse-repo.db.tar.zst $PACKAGE_NAME

echo "Script completed successfully."

