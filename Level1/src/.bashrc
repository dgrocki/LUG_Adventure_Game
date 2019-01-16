function cd() {
  command cd "$@" || return

  if [[ $PWD == "/home/the_first_door" ]]
  then
	/room2
  fi
}
