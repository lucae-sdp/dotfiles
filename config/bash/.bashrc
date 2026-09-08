#
# ~/.bashrc
#
# my first bashrc config ;)
# section order is vital. do not change, unless you know what are you doing.
# section 0 -> garantee that the shell do not read this file if a human isnt typing here.
# section 1 -> blesh PART 1: loads it WITHOUT taking control yet.
#              must come before starship, so starship can detect and hook into it.
# section 2 -> command history.
# section 3 -> exports (defined before anything that might use them).
# section 4 -> colors.
# section 5 -> aliases.
# section 6 -> starship: terminal design, colors, etc.
# section 7 -> blesh PART 2: attach. MUST be the very last line of the file.


### section 0 - if not running interactively, don't do anything ###
[[ $- != *i* ]] && return

### section 1 - blesh, part 1 of 2 ###
# --attach=none loads ble.sh but does NOT let it take over the line editor yet.
# starship checks for ble.sh when it initializes and hooks into it, so ble.sh
# has to be loaded BEFORE starship. the actual takeover happens in section 7.
[[ -f /usr/share/blesh/ble.sh ]] && source /usr/share/blesh/ble.sh --attach=none

### section 2 - history ###
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth
shopt -s histappend

### section 3 - exports ###
# whoever defines comes before whoever uses. bash reads top to bottom, once.
# the guard prevents PATH from growing a duplicate entry on every `exec bash`.
[[ ":$PATH:" != *":$HOME/.local/bin:"* ]] && export PATH="$HOME/.local/bin:$PATH"

### section 4 - colorfull utilitarians ###
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

### section 5 - aliases ###

#5.1 - stow
alias dstow='stow -d ~/projects/dotfiles/config -t ~'
#5.2 - navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

### section 6 - starship ###
# guarded: this file has to survive being cloned onto a machine
# where starship isn't installed yet.
command -v starship >/dev/null && eval "$(starship init bash)"

### section 7 - blesh, part 2 of 2 ###
# THE LAST LINE OF THE FILE. nothing goes below this.
# only attaches if section 1 actually loaded ble.sh.
[[ ! ${BLE_VERSION-} ]] || ble-attach
