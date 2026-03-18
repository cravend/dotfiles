function chpwd() {
  [[ -n "$CURSOR_AGENT" ]] && return
  eza
}

function timemachinethrottle() {
  sudo sysctl "debug.lowpri_throttle_enabled=$1"
}
