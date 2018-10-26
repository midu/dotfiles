nss-staging () {
  command="sudo docker exec -it "$(sudo docker ps | grep nss  | head -n1 | cut -d\  -f 1)" $@"
  # ssh -t nss-staging '
  echo $command
}
