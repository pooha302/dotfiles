# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
export ZSH_CUSTOM=${ZDOTDIR}/custom

ZSH_THEME="muse"
plugins=(git fasd zsh-syntax-highlighting extract zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

