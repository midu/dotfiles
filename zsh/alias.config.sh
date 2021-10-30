alias resource='source ~/.zshrc'

# alias nombom="npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install"
# alias make_erd='bundle exec erd --inheritance --filetype=dot --direct --attributes=foreign_keys,content; dot -Tpng erd.dot > erd.png; rm erd.dot'

# alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# code editor
alias m="$EDITOR ."
alias s="$EDITOR"

# rails
export SPEC_OPTS='--color --format progress'
export CUCUMBER_FORMAT=progress

alias fw='foreman start -c web=1'