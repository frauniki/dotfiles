set -gx PATH /opt/homebrew/bin $PATH

# goenv
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/.pub-cache/bin $PATH
set -x PATH $HOME/flutter/bin $PATH

# pyenv
pyenv init - | source

# nodenv
status --is-interactive; and source (nodenv init -|psub)
