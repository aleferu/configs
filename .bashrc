# PS1
if [ "$color_prompt" = yes ]; then
    # Dynamically prints (env_name) if active, otherwise prints nothing
    PS1='\[\033[01;34m\]\w\[\033[00m\]\n${CONDA_DEFAULT_ENV:+($CONDA_DEFAULT_ENV) }\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\n${CONDA_DEFAULT_ENV:+($CONDA_DEFAULT_ENV) }\$ '
fi
PS1="\n$PS1"

# quit
alias :q='exit'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lah'

# paths
export PATH="/home/aleferu/bin:$PATH"
export PATH="/home/aleferu/.local/bin:$PATH"
