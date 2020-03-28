##################
# Custom options #
##################

# good pratice here: isolating aliases into a dedicated file
source $HOME/.bash_aliases

# adding usually created folder to PATH
if [ -d "$HOME/bin" ]
then
    PATH="$HOME/bin:$PATH"
    export PATH
fi

if [ -d "$HOME/softwares" ]
then
    for software in $(ls $HOME/softwares)
    do
        if [ -d "$HOME/softwares/$software/bin" ]
        then
            PATH="$HOME/softwares/$software/bin:$PATH"
        else
            PATH="$HOME/softwares/$software:$PATH"
        fi
    done
    export PATH
fi

# Git completion for Bash:
# 1. source the plugin script:
source /etc/bash_completion.d/git-prompt  # Debian-based
# source /usr/share/git-core/contrib/completion/git-prompt.sh  # Fedora-based
# 2. customize PS1:
PS1='[\u@\h \W]$(__git_ps1)\$ '  # Fedora-based
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM='auto'

# https://stackoverflow.com/questions/6787734/strange-behavior-of-vim-color-inside-screen-with-256-colors
export TERM='xterm-256color'

# useful variables to set for command editing, cron & git commit
export EDITOR=vim
export VISUAL=vim

# custom history lines
export HISTTIMEFORMAT='%F %T '

# Flatshare IP (courtesy of @mdamien)
export FLAT=""
export RASP=""

# OKD and OpenShift default resources editor
export OC_EDITOR=vim
