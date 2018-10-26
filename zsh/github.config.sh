current_git_branch() {
  git rev-parse --abbrev-ref HEAD
}

repo_url() {
  repo=`git remote -v | grep github | head -n1 | sed -E 's/.+github.com\/([^[:space:]]+).git.+/\1/g'`

  echo "https://github.com/$repo"
}

branch_repo_url() {
  echo "`repo_url`/tree/`current_git_branch`"
}

gh() {
  open `branch_repo_url`
}
