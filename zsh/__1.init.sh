# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# direnv 
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

# nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ssh
ssh-add -l > /dev/null || ssh-add > /dev/null
