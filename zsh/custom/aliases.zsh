alias gca="git commit --amend"
alias ls="eza -F -a"
alias vim="nvim"

# Git
alias gl="git log --graph"
alias glo="git log --graph --oneline"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias glgd="git log --graph --color --date=relative --stat"
alias gfc="git diff-tree --no-commit-id --name-only -r master..HEAD | sed 's/^frontend\///'"
alias gfco="git diff-tree --no-commit-id --name-only -r master..HEAD | sed 's/^frontend\///' | tr '\n' ' '"
alias gfcof="gfco | sed 's/yarn.lock//' | sed 's/package.json//'"

