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

kill-port() {
  local pids
  pids=$(lsof -ti :"$1")
  if [[ -z "$pids" ]]; then
    echo "Nothing listening on port $1"
    return 0
  fi
  echo "$pids" | xargs kill -9
}

# Clipboard → ~/Downloads/<name>.md, verify, then copy the path.
# Usage: clipmd [name]   (unnamed files use a 6-char content hash)
clipmd() {
  local name dest
  if [[ -n "$1" ]]; then
    name="${1:t}"
    name="${name%.md}"
  else
    name="$(pbpaste | shasum -a 256 | cut -c1-6)"
  fi
  dest="$HOME/Downloads/${name}.md"

  if ! pbpaste > "$dest"; then
    echo "Failed to write $dest" >&2
    return 1
  fi

  if [[ ! -s "$dest" ]]; then
    echo "Clipboard is empty" >&2
    rm -f "$dest"
    return 1
  fi

  if ! cmp -s "$dest" <(pbpaste); then
    echo "Paste check failed: $dest does not match clipboard" >&2
    return 1
  fi

  echo "Wrote $dest ($(wc -l < "$dest" | tr -d ' ') lines)" >&2
  head -n 10 "$dest" >&2
  echo >&2

  print -r -- "$dest" | pbcopy
  print -r -- "$dest"
}
