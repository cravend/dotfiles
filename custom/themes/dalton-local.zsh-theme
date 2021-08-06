# Local computer (doesn't show hostname).

autoload -Uz vcs_info
theme_precmd () { vcs_info }

zstyle ":vcs_info:git:*" formats " (%b)"
setopt prompt_subst

PROMPT="%{$fg_bold[red]%}%n%{$reset_color%}:"
PROMPT+="%{$fg_bold[blue]%}%~%{$reset_color%}"
PROMPT+='%{$fg_bold[green]%}${vcs_info_msg_0_}%{$reset_color%} %# '

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd