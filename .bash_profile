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
