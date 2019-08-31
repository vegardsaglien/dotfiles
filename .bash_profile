# console coloring for kool kids
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Export variables
export TERM=xterm-256color

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias wget='wget -c'

# Unraid spesific
alias unraid-start='wget -qO /dev/null http://localhost:$(lsof -nPc emhttp | grep -Po "TCP[^\d]*\K\d+")/update.htm?cmdStart=Start'
alias unraid-stop='wget -qO /dev/null http://localhost:$(lsof -nPc emhttp | grep -Po "TCP[^\d]*\K\d+")/update.htm?cmdStop=Stop'
alias unraid-shutdown='powerdown'
alias unraid-reboot='powerdown -r'
