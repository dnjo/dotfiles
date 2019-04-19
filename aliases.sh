[ -f $DOTFILES/aliases_local.sh ] && source $DOTFILES/aliases_local.sh

command -v hub >/dev/null 2>&1 && alias git=hub
alias gdh="git diff HEAD^ HEAD"
alias v=nvim
