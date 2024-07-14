alias clc="clear; for lines in {1..100};do echo;done;clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias ld='ls -d */'
alias ll='ls -l --color=auto'

alias cal="ncal -C"
alias ccat='pygmentize -g'
alias ga="git add"
alias gs="git status"
alias gc="git commit -m"
alias gitlog="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" # show git log
alias less='less -r' # displays colours
alias d.="du -h . | sort -h"
alias diff="git diff --no-index"        # compares file2 with file1 with colours
