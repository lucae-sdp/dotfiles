#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
export LIBVIRT_DEFAULT_URI=qemu:///system

# prompt colorido
eval "$(starship init bash)"

# saída colorida nos utilitários
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

#Blesh
source /usr/share/blesh/ble.sh

#diminuir o path do terminal
PROMPT_DIRTRIM=1

#alias do stow
alias dstow='stow -d ~/projects/dotfiles/config -t ~'
