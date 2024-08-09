# dotfiles

Uses [Dotbot](https://github.com/anishathalye/dotbot) manager to symlink dotfiles.

## Install

1. Clone this repo:

 ```
 $ git clone git@github.com:code0100fun/dotfiles.git ~/dotfiles
 ```

2. Run install script:
 ```
 $ cd dotfiles
 $ ./install
 ```

 ## Windows

* Install [Hack Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip). New versions at [nerdfonts.com](https://www.nerdfonts.com/font-downloads).
  * Extract zip
  * Right-click desired fonts and choose "Install"

* Install [Alacritty](https://alacritty.org/)
  * mkdir -p $HOME\AppData\Roaming\alacritty
  * Copy `alacritty.toml` to $HOME\AppData\Roaming\alacritty\
* Install Alacritty Theme
  * git clone https://github.com/alacritty/alacritty-theme $HOME\AppData\Roaming\alacritty\themes
