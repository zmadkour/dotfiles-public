zi ice depth=1; 
zi light romkatv/powerlevel10k

# zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H

# zi light z-shell/H-S-MW

zi ice wait lucid pick'autopair.zsh'
zi light hlissner/zsh-autopair

zi ice wait lucid pick'src/bash.command-not-found'
zi light hkbakke/bash-insulter

zi ice from"gh-r" as"program"
zi light junegunn/fzf


# to compile zsh sources for a quicker startup
module_path+=( "${ZI[HOME_DIR]}/zmodules/zpmod/Src" )
zmodload zi/zpmod