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

powerline_path=/usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
[ -f $powerline_path ] && . $powerline_path

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

if [ -d /usr/local/MacGPG2 ]; then
    export PATH=$PATH:/usr/local/MacGPG2/bin
    export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
    if ! pgrep -x "gpg-agent" > /dev/null; then
        gpg-agent --daemon --enable-ssh-support > /dev/null
    fi
fi

if [ -f $HOME/.cargo/env ]; then
    source $HOME/.cargo/env
fi
