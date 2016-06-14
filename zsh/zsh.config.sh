zstyle ':completion:*' completer _expand _expand_alias _complete

expand-to-output () {
    BUFFER='$('$BUFFER')'
    CURSOR=0
    zle redisplay
    zle expand-word
}
zle -N expand-to-output
bindkey "^[^I" expand-to-output
