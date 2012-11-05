eval "$(rbenv init -)"
export PATH="/Users/stefanoballabeni/.rbenv/shims:${PATH}"
source "/Users/stefanoballabeni/.rbenv/libexec/../completions/rbenv.zsh"

alias 193='rbenv local 1.9.3-p194'
alias ree='rbenv local ree-1.8.7-2012.02'

rbenv rehash 2>/dev/null

rbenv() {
  local command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}

rbenv rehash 2>/dev/null
