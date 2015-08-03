function bapush () {
  if [[ $# != 1 ]]; then
    echo "usage: bapush $environment"
  fi

  git push blueapron-$1

  if [[ $? != 0 ]]; then
    echo "\033[0;31mLooks like your push got rejected. Aborting deploy.\033[0m"
    exit 1
  fi

  echo '__________________________________________________________________'
  echo 'Deploying to '$1', waiting 3 minutes, then clearing rails cache...'
  echo '__________________________________________________________________'
  sleep 180
  if [[ $1  = "production" ]]; then
    heroku run -a blueapron rails runner -e production Rails.cache.clear
  else
    heroku run -a blueapron-$1 rails runner -e staging Rails.cache.clear
  fi
}
