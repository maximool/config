# .bash_profile

# Get the aliases and functions
if [ -f "${HOME}/.bashrc" ]
then
    source "${HOME}/.bashrc"
fi

# User specific environment and startup programs

# Cygwin only
if [ -z "$TMUX" -a $(env | grep -c -e IDEA -e VSCODE) -eq 0 ]
then
    eval $(ssh-agent -s)
    ssh-add "$HOME"/.ssh/id_???

    which tmux 2> /dev/null
    if [ $? -eq 0 ]
    then
        tmux
    fi
fi
