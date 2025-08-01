source $HOME/.env

# if running bash
if [[ -n "$BASH_VERSION" ]]; then
    # include .bashrc if it exists
    if [[ -f "$HOME/.bashrc" ]]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/bin" ]]; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias remufi="bash $HOME/scripts/delete_first_N_chars.sh"
alias windir="cd /mnt/c/Users/joseg"
alias py="python3"
alias nv="/usr/local/bin/nvim"
alias edpf="$EDITOR $HOME/.profile"
alias awkdir="cd $HOME/repositories/awk-devs/monorepo"
alias li="ls -la"
alias renpm="rm -rf node_modules package-lock.json && npm cache clean --force && npm i"
alias renejs="rm -rf .next"
alias luadir="cd ~/.config/nvim/lua/"
alias lazycfg="$EDITOR ~/.config/nvim/lua/config/lazy.lua"
alias envcfg="$EDITOR $HOME/.env"
alias lg="lazygit"
alias dotnet="dotnet.exe"
alias zshcfg="$EDITOR $HOME/.zshrc"
alias pfcfg="$EDITOR $HOME/.profile"
alias gem="gemini -m \"gemini-2.5-flash\""
alias lzd='lazydocker'
. "$HOME/.cargo/env"
alias dcbu="docker-compose down && docker-compose build && docker-compose up -d"
alias lab="ssh joe@192.168.3.100"
