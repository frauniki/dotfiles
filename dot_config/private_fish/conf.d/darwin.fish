set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH $HOME/scripts $PATH
set -gx PATH $HOME/bin $PATH

# aqua
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx AQUA_ROOT_DIR $XDG_DATA_HOME/aquaproj-aqua
set -gx PATH $AQUA_ROOT_DIR/bin $PATH

# goenv
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)
set -x PATH $GOPATH/bin $PATH

# pyenv
pyenv init - | source

# nodenv
status --is-interactive; and source (nodenv init -|psub)
