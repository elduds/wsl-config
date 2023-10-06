# WSL Ubuntu Development Environment
This installs and configures the components required for a local development environment running Ubuntu 22.04+ on WSL2.

Includes:
- ansible
- docker
- zsh, ohmyzsh and powerlevel10k theme
- git config
- aws cli v2

## Install
1. Install Windows Subsystem for Linux
```wsl --install```
1. Install Ubuntu from the Microsoft Store
1. Install [Git for Windows](https://gitforwindows.org/), ensuring to use GCM Core as the credential manager
1. Locate `git-credential-manager.exe` typically `/mnt/c/Users/<user>/AppData/Local/Programs/Git/mingw64/bin/git-credential-manager.exe`
1. Install your choice of Nerd Font such as [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/)
1. Launch a WSL terminal and run through first time setup
1. Add your user to passwordless sudo using `sudo visudo`
1. Customise `localhost/hosts.yml`
1. Run `make`
1. Profit
