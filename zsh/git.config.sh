export GIT_EDITOR='subl -w'

alias gb='git branch -a -v' # lists all branches and the latest commit for each
alias gca='git commit -av' # adds all local changes, opens your editor for commit message, and shows diff of commit
alias grm='git ls-files --deleted | xargs git rm' # stages all file deletions at once
alias gcm='git checkout master' # less typing
alias gpr='git pull --rebase' # less typing, more rebasing
alias gspr='git stash; gpr; git stash apply' # useful for keeping local changes across a rebase
alias pull='git pull --rebase' # less typing, more rebasing
alias push='git push' # less typing
alias gitl='git log --pretty=format:"%h %Cblue %an %Cred %s"' # easy to scan log
alias gd='git diff | subl --new-window'
alias gst='open "http://poker-carredas.com/?page=lol&lol=22"'
alias gpt='git' # lol
alias got='git'
alias gls='git ls-files'
alias gconf='cat "$(git rev-parse --show-toplevel)/.git/config"'
# classic
# alias gs='git status' # less typing
# experiment
alias gs='git rev-parse 2>/dev/null && git status || ls'

alias gspec='rspec `git ls-files -mo | grep -C0 -E -e '_spec.rb$'`'
