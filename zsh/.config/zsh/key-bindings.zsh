bindkey -v
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# bindkey "^H" backward-kill-word
bindkey -M viins '^H' backward-kill-word
bindkey "^?" backward-delete-char #make backspace work after exiting vicmd mode
bindkey '\140' forward-word
bindkey "^[[3~" delete-char
WORDCHARS=${WORDCHARS//[\/.-]}
