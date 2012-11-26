# this aliases require the git_remote_branch gem
# https://github.com/webmat/git_remote_branch
#
# gem install git_remote_branch
#

grpush() {
  current_branch=`git rev-parse --abbrev-ref HEAD` && grb publish $current_branch
}

alias grp='grb track'
