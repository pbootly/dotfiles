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

# Odin
export ODIN_ROOT=$HOME/Odin
export PATH=$PATH:$ODIN_ROOT

# SSH
if [ -f ~/.ssh/id_rsa ]; then
  eval "$(ssh-agent -s)" >/dev/null 2>&1
  ssh-add -l | grep -q 'id_rsa' || ssh-add ~/.ssh/id_rsa
fi
