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
alias gst=gs
alias gpt='git' # lol
alias got='git'
# alias gls='git ls-files'
alias gconf='cat "$(git rev-parse --show-toplevel)/.git/config"'
# classic
# alias gs='git status' # less typing
# experiment
alias gs='git rev-parse 2>/dev/null && git status || ls'

alias gspec='rspec `git ls-files -mo | grep -C0 -E -e '_spec.rb$'`'
alias gsolve="git diff --name-only --diff-filter=U | xargs subl"


configure_git() {
  brew install diff-so-fancy
  git config --global core.pager "diff-so-fancy | less --tabs=2 -RFX"
  git config --global color.ui true

  git config --global color.diff-highlight.oldNormal "red bold"
  git config --global color.diff-highlight.oldHighlight "red bold 52"
  git config --global color.diff-highlight.newNormal "green bold"
  git config --global color.diff-highlight.newHighlight "green bold 22"

  git config --global color.diff.meta "227"
  git config --global color.diff.frag "magenta bold"
  git config --global color.diff.commit "227 bold"
  git config --global color.diff.old "red bold"
  git config --global color.diff.new "green bold"
  git config --global color.diff.whitespace "red reverse"
  git config interactive.diffFilter diff-so-fancy

  npm install --global git-open
}
