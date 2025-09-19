# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias steam='nohup steam > /dev/null & exit'

BATTERY () {
    BAT_CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

    if [ "$BAT_CAPACITY" -le 20 ]
    then
        echo "$BAT_CAPACITY% "
    else
        echo ""
    fi
}

PS1='\[\033[1m\]$(BATTERY)\$ \[\033[0m\]'
PATH=$PATH:~/.cargo/bin
