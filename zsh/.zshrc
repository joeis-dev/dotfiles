# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
bindkey -s "^L" 'ls^M'

source "$HOME/.env"
source "$HOME/.alias"
export ZSH="/home/alpha/.oh-my-zsh"
# ZSH_THEME="lambda"
#ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# # Set Spaceship ZSH as a prompt (NPM installation)
# # https://github.com/spaceship-prompt/spaceship-prompt/blob/master/docs/options.md
fpath=($fpath "/home/alpha/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_CHAR_SYMBOL="❯ "


# Startship (Curl installation)
# eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/alpha/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/alpha/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/alpha/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/alpha/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Disables base env in global mode
conda config --set auto_activate_base false

# IBM Cli autocompletion
source "/usr/local/ibmcloud/autocomplete/zsh_autocomplete"
