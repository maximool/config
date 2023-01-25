# .bash_profile

# Get the aliases and functions
if [ -f "${HOME}/.bashrc" ]
then
    source "${HOME}/.bashrc"
fi

# User specific environment and startup programs

# Cygwin only
shopt -s extglob
if [ -z "$MINGW_PREFIX" -a -z "$TMUX" ]
then
    eval $(ssh-agent -s)
    ssh-add "$HOME"/.ssh/id_!(*.pub)

    which tmux 2> /dev/null
    if [ $? -eq 0 ]
    then
        tmux
    fi
fi
