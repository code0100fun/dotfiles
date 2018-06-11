# dotfiles

## Full Install

1. Install
 ```
 $ curl https://raw.githubusercontent.com/code0100fun/dotfiles/master/bin/install > install.sh
 $ bash install.sh
 ```
2. Run vim and press press 'y' to install plugins

3. Restart terminal

## Install (only dotfiles)

1. Clone this repo into ~/dotfiles

 ```
 $ git clone git@github.com:code0100fun/dotfiles.git ~/dotfiles
 ```

2. Install [NeoBundle](https://github.com/Shougo/neobundle.vim)

 ```
 $ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
 $ sh install.sh
 ```
3. Link functions

 ```
 $ cd ~/dotfiles
 $ ./bin/link_functions
 ```

4. Run vim and press press 'y' to install plugins

5. Restart terminal
