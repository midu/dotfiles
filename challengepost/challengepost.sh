bin='cpost'
makefile_path='~/dotfiles/challengepost/platform.Makefile'

function cpostusage() {
  echo "usage: $bin [mysql|redis|sunspot|memcached|nginx|unicorn]"
  echo "       $bin [stop_mysql|stop_redis|stop_sunspot|stop_memcached|stop_nginx|stop_unicorn]"
  echo "       $bin [COMMAND]"
  echo
  echo "$bin COMMANDS:"
  echo "    cpost | cpost all                 starts the whole environment"
  echo "    cpost stop                        stops the entire environment"
  echo "    cpost mysql|stop_mysql            starts/stops mysql server"
  echo "    cpost redis|stop_redis            starts/stops redis server"
  echo "    cpost sunspot|stop_sunspot        starts/stops sunspot"
  echo "    cpost memcached|stop_memcached    starts/stops memcached server"
  echo "    cpost nginx|stop_nginx            starts/stops nginx server"
  echo "    cpost unicorn|stop_unicorn        starts/stops uniron server"
}

cpost() {
  make -f $makefile_path $1
  OUT=$?

  [ $OUT -eq 0 ] || cpostusage
}
