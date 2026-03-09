# If not running interactively, don't do anything
[[ $- != *i* ]] && return

run() {
    nohup $@ > /dev/null & exit
}

cd() {
    builtin cd $@ && ls --color=auto
}

alias ls='ls --color=auto'
alias battery='cat /sys/class/power_supply/BAT0/capacity'
PS1='$ '
