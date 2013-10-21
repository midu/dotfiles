# creates a directory and moves into the new folder
# -p by default
mkd() {
  new_dir=$1

  if [ ! $new_dir ]; then
    mkd_usage $0
    return 1
  fi

  if [ $new_dir -eq '-h' || $new_dir -eq '--help' ]; then
    mkd_usage $0
    exit 0
  fi

  mkdir -p $new_dir
  cd $new_dir
}

mkd_usage() {
  echo "usage: mkd directory ..."
  echo "  creates a directory, recursively and moves into it"
}
