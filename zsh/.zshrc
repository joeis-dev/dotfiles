bindkey -s "^L" 'ls^M'

source "$HOME/.env"
source "$HOME/.alias"
export ZSH="$HOME/.oh-my-zsh"
plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit

fpath=($fpath "$HOME/.zfunctions")
eval "$(starship init zsh)"
