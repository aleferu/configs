# Custom PS1: blue cwd, newline, conda env prefix
PS1='\[\033[01;34m\]\w\[\033[00m\]\n${CONDA_DEFAULT_ENV:+($CONDA_DEFAULT_ENV) }\$ '
PS1="\n$PS1"

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lah'
alias :q='exit'

# PATH
export PATH="/home/aleferu/bin:$PATH"
export PATH="/home/aleferu/.local/bin:$PATH"
export PATH=/home/aleferu/.opencode/bin:$PATH

# Cargo
. "$HOME/.cargo/env"

# Kiro shell integration
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"
