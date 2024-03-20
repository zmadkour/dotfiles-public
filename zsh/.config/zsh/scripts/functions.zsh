function safe-source() {
    [ -f $1 ] && source $1
}



# Top ten memory hogs
# http://www.commandlinefu.com/commands/view/7139/top-ten-memory-hogs
memtop() {ps -eorss,args | gsort -nr | gpr -TW$COLUMNS | ghead}
zle -N memtop


# show newest files
# http://www.commandlinefu.com/commands/view/9015/find-the-most-recently-changed-files-recursively
newest () {find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | grep -v cache | grep -v ".hg" | grep -v ".git" | sort -r | less }


function printHookFunctions () {
    print -C 1 ":::pwd_functions:" $chpwd_functions
    print -C 1 ":::periodic_functions:" $periodic_functions
    print -C 1 ":::precmd_functions:" $precmd_functions
    print -C 1 ":::preexec_functions:" $preexec_functions
    print -C 1 ":::zshaddhistory_functions:" $zshaddhistory_functions
    print -C 1 ":::zshexit_functions:" $zshexit_functions
}

# Query Wikipedia via console over DNS
# http://www.commandlinefu.com/commands/view/2829
wp() {
    dig +short txt ${1}.wp.dg.cx
}

