[ -f $DOTFILES/aliases_local.sh ] && source $DOTFILES/aliases_local.sh

alias gdh="git diff HEAD^ HEAD"
alias glu="glo @{u}...HEAD"
alias v=nvim
alias refresh-yubikey='gpg-connect-agent "scd serialno" "learn --force" /bye > /dev/null'
