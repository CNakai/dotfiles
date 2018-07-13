export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM="xterm-256color"
export PROMPT='%15<..<%~%# '
export RPROMPT='%t'

# export GOPATH="$HOME/workspace/go"
# export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
# export PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-linux/"
export PATH="$PATH:/home/nakai/.node_modules/bin"
export npm_config_prefix=~/.node_modules
# export NODE_PATH="$NODE_PATH:/home/nakai/.npm-global/lib/node_modules"
export PATH="$PATH:$HOME/.gem/ruby/2.5.0/bin"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nakai/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# export PATH="$PATH:/usr/local/avr/bin"

# Make sure that the output of ls is colorized
alias ls='ls --color=auto'
# Allow for my own stupidity with exiting
alias exi='exit'
alias :exi='exit'

# Start qutebrowser with its webengine
alias qutebrowser='qutebrowser --backend webengine'

# make python3 the default python
alias python='python3'

# OPAM configuration
# . /home/nakai/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
# export PATH="$HOME/.plenv/bin:$PATH"
# eval "$(plenv init -)"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

bindkey -v
bindkey jk vi-cmd-mode
bindkey kj vi-cmd-mode
function zle-line-init zle-keymap-select zle-line-finish () {
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # the command mode for vi
            echo -ne "\e[1 q"
        else
            # the insert mode for vi
            echo -ne "\e[5 q"
        fi
    fi
}
zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish

alias emacs-debug='emacs --debug-init'

