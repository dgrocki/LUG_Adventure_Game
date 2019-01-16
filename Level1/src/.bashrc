function cd() {
  command cd "$@" || return
  first_door=`cat /variables/first_door`
  if [[ $PWD == "/home/the_first_door" && "$first_door" == "y" ]]
  then
	/puzzle1.sh
  fi
}
