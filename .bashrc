# If not running interactively, don't do anything
[[ $- != *i* ]] && return

run() {
    nohup $@ > /dev/null & exit
}

cd() {
    builtin cd "$@"
    ls --color=always #-p -B --color=never
}

# alias ls='ls -p -B'
alias ls='ls --color=always'
alias battery='cat /sys/class/power_supply/BAT0/capacity'
alias screenshot='shotgun $(hacksaw -f "-i %i -g %g") - | xclip -t 'image/png' -selection clipboard'
alias screenshot-save='shotgun $(hacksaw -f "-i %i -g %g") ~/media/screenshots/$(date +%Y-%m-%d-%H-%M-%S).png'
alias download-playlist='yt-dlp -t mp3 -o "%(playlist_index)02d - %(title)s"'
alias browse='links duckduckgo.com'
alias emacs='emacsclient -nc -a "" & exit'
alias watch-change='ls | entr -c'
alias volume='pactl set-sink-volume @DEFAULT_SINK@'
PS1='$ '

# set -o vi
# bind -m vi-command 'Control-l: clear-screen'
# bind -m vi-insert 'Control-l: clear-screen'

# Created by `pipx` on 2026-04-18 14:30:45
export PATH="/home/bruno/.venv/bin:$PATH:/home/bruno/.local/bin"
export _JAVA_AWT_WM_NONREPARENTING=1
