function cd() {
  command cd "$@" || return

  if [[ -d .git ]]
  then
    git status --short
  else
    ls -al
  fi
}
