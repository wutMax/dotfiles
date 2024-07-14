if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

bind '"\C-p": beginning-of-line' #Binds ctrl p to beginning of the line

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/ORACLErdbms/11gR2/bin
#mount /users/mc00311/matlab_job_storage/

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=10000


#############################################
#Colours in manual pages
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

#export EDITOR=~/.local/bin/vim
#############################################
# export TERM=xterm-256color
#############################################
#terminal prompt
PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u@\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/scratch/Anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/scratch/Anaconda3/etc/profile.d/conda.sh" ]; then
        . "/scratch/Anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/scratch/Anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/user/HS301/mc0100/.local/bin:$PATH"

function push {
    curl -s -F "token=" \
    -F "user=" \
    -F "title=$1" \
    -F "message=$2" https://api.pushover.net/1/messages.json
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# eval "$(thefuck --alias)"
