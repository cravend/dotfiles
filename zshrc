source "${HOME}/.dotfiles/zsh-defer/zsh-defer.plugin.zsh"
# Allow colors in terminal
zsh-defer autoload -U colors && zsh-defer colors

# Load version control information
zsh-defer autoload -Uz vcs_info
precmd() { zsh-defer vcs_info }

# Format the vcs_info_msg_0_ variable
zsh-defer zstyle ':vcs_info:git:*' formats ' (%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg_bold[red]%}%n'
PROMPT+='%{$fg[yellow]%}@%m%{$reset_color%}:'
PROMPT+='%{$fg_bold[blue]%}%~%{$reset_color%}'
PROMPT+='%{$fg_bold[green]%}${vcs_info_msg_0_}%{$reset_color%} %# '

# Add iTerm2 integration
zsh-defer -c 'test -e "${HOME}/.iterm2_shell_integration.zsh" && \
  source "${HOME}/.iterm2_shell_integration.zsh"'

# Add aliases
zsh-defer test -e "${HOME}/.dotfiles/aliases" && \
  source "${HOME}/.dotfiles/aliases"
zsh-defer test -e "${HOME}/.custom_aliases" && \
  source "${HOME}/.custom_aliases"

# add all the default suggested stuff
zsh-defer setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
zsh-defer autoload -Uz compinit
zsh-defer compinit

zsh-defer zstyle ':completion:*' auto-description 'specify: %d'
zsh-defer zstyle ':completion:*' completer _expand _complete _correct _approximate
zsh-defer zstyle ':completion:*' format 'Completing %d'
zsh-defer zstyle ':completion:*' group-name ''
zsh-defer zstyle ':completion:*' menu select=2
zsh-defer zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zsh-defer zstyle ':completion:*' list-colors ''
zsh-defer zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zsh-defer zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zsh-defer zstyle ':completion:*' menu select=long
zsh-defer zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zsh-defer zstyle ':completion:*' use-compctl false
zsh-defer zstyle ':completion:*' verbose true

zsh-defer zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zsh-defer zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
