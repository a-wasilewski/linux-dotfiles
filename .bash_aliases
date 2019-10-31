# if You want to read file with functions or only aliases
read_functions_file=true

# system
alias ins='sudo apt-get install'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias root='sudo bash'

alias py='python3'
alias p='python3'

# ls
alias ls='\ls -hAFv --color=auto'
alias ll='ls -l'  # all info
alias lk='ll -Sr'  # sort by size
alias lt='ll -tr'  # sort by time
alias l.='ll -d .*'  # only .dotfiles
alias l='ll -X'  # sort by extension

# files
alias rm='rm -dI'
alias rr='rm -rf'
alias cp='cp -ir'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias mk='mkdir'

# other
alias q='exit'
alias c='clear'
alias cs='clear;l'
alias calc='bc -l'
alias du='du -h'
alias DU='du -had1 | sort -h'

# Path
alias ..='cd ..'
alias ...='cd ../..'
alias back='echo $OLDPWD;cd $OLDPWD'
alias fhere="find . -name "

if [ "$read_functions_file" = true ] ; then
    if [ -f $HOME/.bash_functions ]; then
        . $HOME/.bash_functions
    fi
fi

# setting vi as default editor
set -o vi
export EDITOR='vi'
export VISUAL='vi'

# 8/16 bit colors user@host:~/path $ 
# export PS1='\e[92m\u\e[97m@\e[96m\h\e[97m:\e[95m\w\e[97m $ \e[39m'

# user@host [~/path] $ 
# export PS1='\[\e]0;\u@\h: \w\a\]\[\033[38;5;82m\]\u\[\033[38;5;15m\]@\[\033[38;5;51m\]\h \[\033[38;5;15m\][\[\033[38;5;165m\]\w\[\033[38;5;15m\]] $ \[\033[00m\]'

# user@host:~/path $ 
export PS1='\[\e]0;\u@\h: \w\a\]\[\033[38;5;82m\]\u\[\033[38;5;15m\]@\[\033[38;5;51m\]\h\[\033[38;5;15m\]:\[\033[38;5;165m\]\w\[\033[38;5;15m\] $ \[\033[00m\]'
