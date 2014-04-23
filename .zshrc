ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git textmate ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
export PATH=$HOME/npm/bin:$PATH

fpath=( "$HOME/.zfunctions" $fpath )

autoload -U promptinit && promptinit

PURE_GIT_PULL=0

prompt pure

alias dh="echo 'Hiding desktop contents'; defaults write com.apple.finder CreateDesktop -bool false; killall Finder;"
alias ds="echo 'Revealing desktop contents'; defaults write com.apple.finder CreateDesktop -bool true; killall Finder;"

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

j() {
  ack "$*" --js --coffeescript --ignore-dir=node_modules --ignore-dir=bower_components --ignore-dir=components
}

#--output '$.:$_' pattern filename

export GOPATH=$HOME/gg
export PATH=$GOPATH/bin:$PATH

export NPMPATH=$HOME/npm
export PATH=$NPMPATH/bin:$PATH
