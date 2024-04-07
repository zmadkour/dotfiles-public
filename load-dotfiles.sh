#!/bin/bash
stow -R zsh/
stow -R git/

# add this line to your /etc/zsh/zshenv (without the hash)
# export ZDOTDIR=$HOME/.config/zsh
# if [[ $SHELL != '/bin/zsh' ]] then 
#     chsh -s $(which zsh)
# fi

if [[ $ZDOTDIR != "$HOME/.config/zsh" ]]; then
    [[ -d /etc/zsh ]] && echo "export ZDOTDIR=\$HOME/.config/zsh" >> /etc/zsh/zshenv
    [[ -f /etc/zshenv ]] && echo "export ZDOTDIR=\$HOME/.config/zsh" >> /etc/zshenv
fi

[ ! -d ~/.config/zhistory/ ] && sudo mkdir -p ~/.config/zhistory/
[ ! -f ~/.config/zhistory/.zhistory ] && sudo touch ~/.config/zhistory/.zhistory

if [[ $2 == 'starship' ]]; then    
    stow -D p10k/ 
    stow -R starship/
else  
    stow -D starship/ 
    stow -R p10k/
fi
