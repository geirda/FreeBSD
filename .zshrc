# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/usr/home/geir/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Own adjustments
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PS1='%B%F{green}%n@%m %B%F{blue}%~%F{reset}%b> '
#PS1=$'\e[1;32m%n@%m \e[1;34m%1~\e[00m> '
export LSCOLORS=ExGxBxDxCxefedhbagacad

# Aliases
alias l='ls'
alias la='ls -A'
alias ll='ls -lp'
alias ls='ls --color'
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-char
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

tput smkx

case "$TERM" in
rxvt*)
	$HOME/bin/motd.sh
	;;
*)
	;;
esac
