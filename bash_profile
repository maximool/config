# .bash_profile

# Get the aliases and functions
if [ -f "${HOME}/.bashrc" ]
then
    source "${HOME}/.bashrc"
fi

# User specific environment and startup programs

# Cygwin only
# if [ -z "$TMUX" ]
# then
#     eval $(ssh-agent -s)
#     ssh-add "$HOME"/.ssh/id_???
#     tmux
# fi
