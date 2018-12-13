export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

PROMPT='🦁%B%F{208%}@%M %{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'

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
