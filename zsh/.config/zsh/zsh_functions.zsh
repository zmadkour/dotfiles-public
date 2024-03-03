function safe-source() {
    [ -f $1 ] && source $1
}