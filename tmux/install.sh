#!/bin/bash
set -e

ln -s "$(pwd)/tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
