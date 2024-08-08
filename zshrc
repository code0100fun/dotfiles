# load custom exectuables for user
if [[ -d ~/.local/bin ]];then
    export PATH=~/.local/bin:$PATH
fi

alias ls="exa"

# ctrl + space to accept autosuggestgs
bindkey '^ ' autosuggest-accept

# load starship prompt
eval "$(starship init zsh)"

# load homebrew
# eval $(~/.linuxbrew/bin/brew shellenv)

##############################################################################
# plugins
##############################################################################
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", from:github, defer:3
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
