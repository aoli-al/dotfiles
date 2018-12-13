export ZSH="/Users/leo/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

case `uname` in
  Darwin)
    export BYOBU_PREFIX=/usr/local
    alias vim=nvim
    alias vimdiff=nvim -d
  ;;
  Linux)
  ;;
esac
export CLICOLOR=1
export TERM=xterm-256color
if [[ -a ${ZDOTDIR:-${HOME}}/.zshrc-local ]]; then
  source "${ZDOTDIR:-${HOME}}/.zshrc-local"
fi
