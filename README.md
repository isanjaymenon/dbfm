# dbfm
dbfm (Download Browsers for Me) is a simple bash tool designed to help you install web browsers on Debian-based Linux systems.

## Directory Structure

```txt
dbfm/
├── .gitignore
├── dbfm.sh
├── LICENSE
├── README.md
└── browsers/
    ├── app-brave.sh
    ├── app-chrome.sh
    └── app-edge.sh
```

## Features

- **Automatic Installation**: Automatically installs the selected browser with minimal user input.
- **Browser Selection**: Choose from a selection of web browsers.
- **Installation Verification**: Verifies if the browser installation was successful.
- **Modular Structure**: Each browser has its own installation script for easy maintenance and customization.

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/isanjaymenon/dbfm
   cd dbfm
   ```

2. **Make the Main Script Executable**:

   ```bash
   chmod +x dbfm.sh
   ```

3. **Run the Script**:

   ```bash
   ./dbfm.sh
   ```

## Usage

1. When prompted, choose the browser you want to install by entering the corresponding number.
2. The script will update your package lists (if necessary) and install the selected browser.
3. Once installation is complete, the script will verify if the browser was installed successfully.

## Supported Browsers

- **Brave**
- **Google Chrome**
- **Microsoft Edge**

## Requirements

- Debian-based Linux distribution (e.g., Ubuntu).
- Internet connection to download browser packages.

## Notes

- Ensure you have sudo privileges to install packages.
- This script may not work on non-Debian-based Linux distributions without modifications.
- For customizations or adding more browsers, modify the respective `browsers/app-*.sh` scripts.

## License

This project is licensed under the [MIT License](LICENSE).
