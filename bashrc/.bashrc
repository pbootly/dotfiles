# Non interactive return
[[ $- != *i* ]] && return

# Neovim
if command -v nvim >/dev/null 2>&1; then
  export EDITOR=nvim
  alias vim='nvim'
fi

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
