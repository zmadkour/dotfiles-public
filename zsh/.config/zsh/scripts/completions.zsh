if type delta &> /dev/null; then
    source <(delta --generate-completion zsh)
fi

if type helm &> /dev/null; then
    source <(helm completion zsh)
fi

if type python3 &> /dev/null; then
    source <(python3 -m pip completion -z)
fi

if type kubectl &> /dev/null; then
    source <(kubectl completion zsh)
fi

