# Set default editor to nvim
export EDITOR=nvim
export PSQL_EDITOR=/usr/local/bin/nvim

# Git Branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal Prompt
export PS1="\[\e[1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ \[\e[0m\]"

# Path Exports
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.local/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Local config
[[ -f ~/.bash_profile.local ]] && source ~/.bash_profile.local

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

