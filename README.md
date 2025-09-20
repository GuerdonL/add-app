# add-app

A tiny CLI to install AppImages as commands on your PATH.

Features:
- User (~/.local/bin) or global (/usr/local/bin) install
- Choose command name (-n, --name)
- Overwrite existing (-f, --force)
- Track installs (--list, --where NAME, --uninstall NAME)

## Install

Quick (via install.sh):
    GH_USER=YOUR_GITHUB_USERNAME bash -c 'curl -fsSL https://raw.githubusercontent.com/$GH_USER/add-app/main/install.sh | bash'

Manual:
    curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/add-app/main/bin/add-app -o ~/.local/bin/add-app
    chmod +x ~/.local/bin/add-app

Make sure ~/.local/bin is on your PATH.

## Usage

    add-app ./nvim.appimage -n nvim
    add-app --list
    add-app --where nvim
    add-app --uninstall nvim

## Uninstall

    rm -f ~/.local/bin/add-app
    rm -f ~/.local/share/add-app/registry.tsv

## License

MIT
