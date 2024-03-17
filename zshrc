# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle :compinstall filename '/home/usucapiao/.zshrc'

# Autocompletion

autoload -Uz compinit
compinit

# End of lines added by compinstall

autoload -Uz compinit promptinit
compinit
promptinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Oh My ZSH

source /usr/share/oh-my-zsh/oh-my-zsh.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(archlinux
	asdf
	bundler
	docker
	jsontools
	vscode
	web-search
	tig
	gitfast
	colored-man-pages
	colorize
	command-not-found
	cp
	dirhistory
	sudo)

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Bash Imports

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias alacritty='alacritty -o font.size=9'
alias vim='nvim'
export LESS='-R --use-color -Dd+r$Du+b'
