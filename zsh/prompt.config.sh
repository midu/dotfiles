# export RPROMPT='[%*]' #$fg_no_bold[white]%}[%D{%H:%M:%S}]'
# function preexec() {
#   timer=${timer:-$SECONDS}
# }

# function precmd() {
#   if [ $timer ]; then
#     timer_show=$(($SECONDS - $timer))

#     export PROMPT="$fg_no_bold[yellow]${timer_show}s ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)"
#     unset timer
#   fi
# }
