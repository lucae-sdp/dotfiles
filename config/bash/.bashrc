#
# ~/.bashrc
#
# my first bashrc config ;)
# section order is vital. do not change, unless you know what are you doing.
# Section 0 -> garantee that the shell do not read this file if a human isnt typing here.
# Section 1 -> command history.
# section 2 -> colors.
# section 3 -> aliases.
# section 4 -> others.
# section 5 -> starship: terminal design, colors, etc.
# section 6 -> blesh.


### section 0 - if not running interactively, don't do anything ###
[[ $- != *i* ]] && return

### section 1 - history ###
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth
shopt -s histappend

### section 2 - colorfull utilitarians ###
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

### section 3 - aliases ###

#3.1 - stow
alias dstow='stow -d ~/projects/dotfiles/config -t ~'
#3.2 - navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

### section 4 - others ###

#4.1 - exports
export PATH="$HOME/.local/bin:$PATH"
export LIBVIRT_DEFAULT_URI=qemu:///system

### section 5 - starship ###
eval "$(starship init bash)"

### section 6 - blesh ###
source /usr/share/blesh/ble.sh

