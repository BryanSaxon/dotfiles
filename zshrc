# Autoload packages
autoload -U compinit colors vcs_info
colors
compinit

# Set style of command prompt
zstyle ':vcs_info:*' stagedstr '%F{green}●%f '
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f '
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f %u%c"

_setup_ps1() {
  vcs_info
  GLYPH="▲"
  [ "x$KEYMAP" = "xvicmd" ] && GLYPH="▼"
  PS1=" %(?.%F{blue}.%F{red})$GLYPH%f %(1j.%F{cyan}[%j]%f .)%F{blue}%~%f %(!.%F{red}#%f .)"
  RPROMPT="$vcs_info_msg_0_"
}
_setup_ps1

# Vi mode
zle-keymap-select () {
 _setup_ps1
  zle reset-prompt
}
zle -N zle-keymap-select
zle-line-init () {
  zle -K viins
}
zle -N zle-line-init
bindkey -v

# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY

# Also remember command start time and duration
setopt EXTENDED_HISTORY

# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS

# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE

# Correct spelling of all arguments in the command line
setopt CORRECT_ALL

# Enable autocompletion
zstyle ':completion:*' completer _complete _correct _approximate 

# Include custom configurations
if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi

