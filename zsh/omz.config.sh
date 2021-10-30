export HOME=~
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

plugins=(lol osx brew git history-substring-search node npm redis-cli)

echo "oh my"
echo $ZSH

source $ZSH/oh-my-zsh.sh
