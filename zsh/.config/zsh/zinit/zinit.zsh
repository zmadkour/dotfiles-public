typeset -Ag ZI
ZI[HOME_DIR]="${ZI_HOME_DIR}"
ZI[BIN_DIR]="${ZI[HOME_DIR]}/bin"

#init zi repo and dirs
function zinit(){
    # set zi home directory
    command mkdir -pv "$ZI[BIN_DIR]"

    # enable compaudit on zi home dir and clone zi repo
    compaudit | xargs chown -R "$(whoami)" "$ZI[HOME_DIR]"
    compaudit | xargs chmod -R go-w "$ZI[HOME_DIR]"
    command git clone https://github.com/z-shell/zi.git "$ZI[BIN_DIR]"
}

# enable zi and install if doesn't exist
if [[ ! -f $ZI[BIN_DIR]/zi.zsh ]]; 
then
    echo "${ZI[BIN_DIR]}/zi.zsh not found, initialising..."
    zinit
fi

# enable zi completions
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi


safe-source "${ZI[BIN_DIR]}/zi.zsh"

 