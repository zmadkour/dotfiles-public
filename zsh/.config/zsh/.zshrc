# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# add directory to the path if exists
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zhistory/.zhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
# stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# completions
autoload -Uz compinit  && compinit
# case insensetive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

# Start neofetch
# neofetch | lolcat


[[ -f $ZDOTDIR/zsh_functions.zsh ]] && source $ZDOTDIR/zsh_functions.zsh

safe-source $ZDOTDIR/zinit/zinit.zsh

safe-source $ZDOTDIR/zinit/ziplugins.zsh
safe-source $ZDOTDIR/themes/theme.zsh
safe-source $ZDOTDIR/key-bindings.zsh

safe-source $ZDOTDIR/alias
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

return 0