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

# cf. /usr/lib/git-core/git-sh-prompt (__git_ps1 function call must be
# added to PS1)
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM='auto'

# http://sametmax.com/les-environnement-virtuels-python-virtualenv-et-virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# https://stackoverflow.com/questions/6787734/strange-behavior-of-vim-color-inside-screen-with-256-colors
export TERM='xterm-256color'

# useful variables to set for command editing, cron & git commit
export EDITOR=vim
export VISUAL=vim

# custom history lines
export HISTTIMEFORMAT='%F %T '

# Cygwin-only PS1
# export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]$(__git_ps1 " (%s)")\n\$ '

# Flatshare IP (courtesy of @mdamien)
export FLAT=""
