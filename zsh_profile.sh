source $DOTFILES/env.sh
source $DOTFILES/functions.sh
source $DOTFILES/aliases.sh

export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin
