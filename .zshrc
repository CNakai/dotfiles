# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	export PROMPT='%n@%M %15<..<%~%# '
else
	export PROMPT='%15<..<%~%# '
fi
# export RPROMPT='%t'
export PATH="$PATH:/home/nakai/.local/bin"
export PATH="$PATH:/home/nakai/.node_modules/bin"
export GERBIL_HOME="/opt/gerbil-scheme-git"
export PATH="$PATH:/opt/gerbil-scheme-git/bin"

alias csi=chicken-csi
alias csc=chicken-csc

zstyle ':completion:*' rehash true

export PATH="/home/nakai/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

export NODE_PATH="/usr/lib/node_modules"


# Allow for my own stupidity with exiting
alias exi='exit'
alias :exi='exit'

# make python3 the default python
alias python='python3'

# Allow easily executing connection scripts
export PATH="$PATH:/home/nakai/.ssh/connection_scripts"

bindkey jk vi-cmd-mode
bindkey kj vi-cmd-mode
function zle-line-init zle-keymap-select zle-line-finish () {
    if [ "$TERM" = "rxvt-unicode-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            echo -ne "\e[1 q" # the command mode for vi
        else
            echo -ne "\e[5 q" # the insert mode for vi
        fi
    fi
}
zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish

# # Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
# HISTSIZE=5000
# SAVEHIST=1000
# setopt appendhistory autocd beep extendedglob nomatch notify
# bindkey -v
# End of lines configured by zsh-newuser-install


# # The following lines were added by compinstall
# zstyle :compinstall filename '/home/nakai/.zshrc'

# autoload -Uz +X compinit && compinit
# autoload -U +X bashcompinit && bashcompinit
# eval "$(stack --bash-completion-script stack)"
# # End of lines added by compinstall

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"