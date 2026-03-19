alias ls="eza -F -a"
alias vim="nvim"

# Git
alias gca="git commit --amend"
alias gbm="git branch --merged | grep -Ev '(\*|^\+|master|main|dev)' | xargs --no-run-if-empty git branch -d"
alias gl="git log --graph"
alias glo="git log --graph --oneline"
alias glg="git log --graph --color --date=relative --stat"
alias glgo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

