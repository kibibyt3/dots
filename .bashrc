#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# pipewire/openrc compatibility
#if test -z "${XDG_RUNTIME_DIR}"; then
#	export XDG_RUNTIME_DIR=$(mktemp -d "${UID}-runtime-dir.XXX")
#fi

export BROWSER=/usr/bin/librewolf
export EDITOR=vim
export PATH=$PATH:$HOME/.cargo/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# alias vim='vim -p' # Make vim open in tabbed mode.
alias vim='nvim'
alias ffmpeg-record='ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -c:v ffvhuff screen.mkv'
alias ffmpeg-record-lossy='ffmpeg -f x11grab -video_size 1920x1080 -framerate 60 -i $DISPLAY -c:v libx264 -preset ultrafast -c:a aac screen.mp4'

alias bell='echo -e "\a"'

# Make i3 refuse to sleep for the current session.
alias i3nosleep='xset s off && xset -dpms && xset s noblank'

PS1='\[\033[01;36m\][\u@\h \W]$\[\033[00m\] '

# doas tab autocomplete compatibility
complete -cf doas

(cat ~/.cache/wal/sequences &)

neofetch
echo ""
echo "Welcome, $USER!"
echo ""
