#!/bin/bash
stow -R zsh/
stow -R git/

if [[ $2 == 'starship' ]] then    
    stow -D p10k/ 
    stow -R starship/
else  
    stow -D starship/ 
    stow -R p10k/
fi
