# Allow colors in terminal
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' (%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg_bold[red]%}%n%{$reset_color%}:'
PROMPT+='%{$fg_bold[blue]%}%~%{$reset_color%}'
PROMPT+='%{$fg_bold[green]%}${vcs_info_msg_0_}%{$reset_color%} %# '

# Add iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
  source "${HOME}/.iterm2_shell_integration.zsh"

# Add aliases
test -e "${HOME}/.dotfiles/aliases" && \
  source "${HOME}/.dotfiles/aliases"
test -e "${HOME}/.custom_aliases" && \
  source "${HOME}/.custom_aliases"
