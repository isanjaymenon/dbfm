#!/bin/bash

# Check if the script is running on a Debian-based system
if [ "$(uname -s)" != "Linux" ] || ! grep -qiE 'debian|ubuntu' /etc/os-release; then
    echo "This script is intended for Debian-based systems only (like Ubuntu, Debian)."
    exit 1
fi

# Function to install a browser from its script
install_browser() {
    browser_script=$1
    if [ -f "$browser_script" ]; then
        echo "Installing $(basename "$browser_script" .sh)..."
        bash "$browser_script"
    else
        echo "Browser script not found: $browser_script"
        exit 1
    fi
}

# Prompt user for browser choice
echo "Welcome to Download Browsers for Me (dbfm)"
echo "Which browser would you like to install?"
echo "1. Brave Browser"
echo "2. Google Chrome"
echo "3. Microsoft Edge"
read -p "Enter your choice [1-3]: " choice

case $choice in
    1) install_browser "browsers/dbfm-brave.sh" ;;
    2) install_browser "browsers/dbfm-chrome.sh" ;;
    3) install_browser "browsers/dbfm-edge.sh" ;;
    *) echo "Invalid choice. Exiting."; exit 1 ;;
esac

# Check if the installation was successful
installed_browser=""
case $choice in
    1) installed_browser="Brave Browser" ;;
    2) installed_browser="Google Chrome" ;;
    3) installed_browser="Microsoft Edge" ;;
esac

if dpkg -l | grep -q "^ii.*$installed_browser"; then
    echo "$installed_browser has been successfully installed."
else
    echo "Installation of $installed_browser failed."
fi

