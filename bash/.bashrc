# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias cls='clear'
alias hello='cd; clear; fastfetch'
alias ll='ls -lah'

# change directory
alias root='cd /'
alias ~='cd ~'
alias home='cd ~'
alias projects='cd ~/Projects'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'
alias music='cd ~/Music'
alias pictures='cd ~/Pictures'
alias videos='cd ~/Videos'


# Log
alias syslog='journalctl -f'

# Prompt before overwriting/deleting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -pv'

mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Extract compressed file
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)  tar xjf "$1"  ;;
            *.tar.gz)   tar xzf "$1"  ;;
            *.tar.xz)   tar xJf "$1"  ;;
            *.bz2)      bunzip2 "$1"  ;;
            *.gz)       gunzip "$1"   ;;
            *.tar)      tar xf "$1"   ;;
            *.zip)      unzip "$1"    ;;
            *.7z)       7z x "$1"     ;;
            *)          echo "Unknown archive format: $1" ;;
        esac
    else
        echo "'$1' is not a file"
    fi
}

# System Update
alias update='yay -Syu'

# Manage services
alias sstart='sudo systemctl start'
alias sstop='sudo systemctl stop'
alias srestart='sudo systemctl restart'
alias sstatus='sudo systemctl status'
alias senable='sudo systemctl enable'
alias sdisable='sudo systemctl disable'

# Network
alias myip='curl -s ifconfig.me'
alias localip="ip addr show | grep 'inet ' | grep -v '127.0.0.1'"
alias ports='ss -tulanp'
alias listening='ss -tlnp'

. "$HOME/.cargo/env"
