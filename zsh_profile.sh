source $DOTFILES/env.sh
source $DOTFILES/functions.sh
source $DOTFILES/aliases.sh

if command -v >/dev/null 2>&1; then
    export PATH="$HOME/.exenv/bin:$PATH"
    eval "$(exenv init -)"
    eval "$(rbenv init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

if [ -n "$DOTFILES_GPG_AGENT" ]; then
    export GPG_TTY="$(tty)"
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    if ! pgrep -x "gpg-agent" > /dev/null; then
	gpgconf --launch gpg-agent
    fi
fi

if [ -f $HOME/.cargo/env ]; then
    source $HOME/.cargo/env
fi
