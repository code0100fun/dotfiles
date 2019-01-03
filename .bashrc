alias ll='ls -l'
alias gap='git add -p'
alias gnap='git add -N --ignore-removal . && gap && gref'
alias glp='git log -p'
alias glg='git log --graph --oneline --decorate --color --all'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcl='git clean -f -d'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git pull'
alias glod='git log --oneline --decorate'
alias gp='git push'
alias gpr='git pull --rebase'
alias gst='git status'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gco='git checkout'
alias gbs='git branch --sort=committerdate'
alias reset-authors='git commit --amend --reset-author -C HEAD'
alias vi='vim'

# git reset empty files
gref() {
  command git --no-pager diff --cached --stat | command grep "|\s*0$" | awk '{system("command git reset " $1)}'
}

gcr() {
  git checkout -b $1 origin/$1
}

. "$HOME/.prompt"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VISUAL=vim
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Android
export ANDROID_SDK_ROOT=/home/code0100fun/Android/Sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ESP-IDF
export XTENSA_PATH="$HOME/Projects/esp32/xtensa-esp32-elf"
export OPENOCD_ESP32_PATH="$HOME/Projects/esp32/openocd-esp32"
export PATH="$XTENSA_PATH/bin:$PATH"
export IDF_PATH=/home/code0100fun/Projects/esp32/esp-idf

###-tns-completion-start-###
if [ -f /home/code0100fun/.tnsrc ]; then 
    source /home/code0100fun/.tnsrc 
fi
###-tns-completion-end-###
