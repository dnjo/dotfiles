source $DOTFILES/env.sh
source $DOTFILES/functions.sh
source $DOTFILES/aliases.sh

if [ -n "$DOTFILES_GPG_AGENT" ]; then
    export GPG_TTY="$(tty)"
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    if ! pgrep -x "gpg-agent" > /dev/null; then
	    gpgconf --launch gpg-agent
    fi
fi
