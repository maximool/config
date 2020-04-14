# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

# Cygwin only
# if [ -z "$TMUX" ]
# then
#     eval $(ssh-agent -s)
#     ssh-add \
#         "$HOME/.ssh/hrp" \
#         "$HOME/.ssh/id_dsa" \
#         "$HOME/.ssh/id_rsa" \
#         "$HOME/.ssh/trrfrm"
#     tmux
# fi
