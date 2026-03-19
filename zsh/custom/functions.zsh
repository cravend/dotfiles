dock-lock-position() {
  defaults write com.apple.Dock position-immutable -bool true
  killall Dock
}

dock-unlock-position() {
  defaults write com.apple.Dock position-immutable -bool false
  killall Dock
}

dock-lock-size() {
  defaults write com.apple.Dock size-immutable -bool true
  killall Dock
}

dock-unlock-size() {
  defaults write com.apple.Dock size-immutable -bool false
  killall Dock
}

dock-lock-contents() {
  defaults write com.apple.Dock contents-immutable -bool true
  killall Dock
}

dock-unlock-contents() {
  defaults write com.apple.Dock contents-immutable -bool false
  killall Dock
}

dock-lock() {
  defaults write com.apple.Dock position-immutable -bool true
  defaults write com.apple.Dock size-immutable -bool true
  defaults write com.apple.Dock contents-immutable -bool true
  killall Dock
}

dock-unlock() {
  defaults write com.apple.Dock position-immutable -bool false
  defaults write com.apple.Dock size-immutable -bool false
  defaults write com.apple.Dock contents-immutable -bool false
  killall Dock
}

gbm() {
  git branch --merged --format='%(refname:short)' \
    | grep -v -E '^(main|master|dev)$' \
    | grep -v -Fx "$(git branch --show-current)" \
    | xargs -I {} git branch -d {}
}
