#!/bin/bash
stow -R zsh/
stow -R git/

# add this line to your /etc/zsh/zshenv (without the hash)
# export ZDOTDIR=$HOME/.config/zsh
# if [[ $SHELL != '/bin/zsh' ]] then 
#     sudo chsh $(which zsh)
# fi

if [[ $2 == 'starship' ]] then    
    stow -D p10k/ 
    stow -R starship/
else  
    stow -D starship/ 
    stow -R p10k/
fi
