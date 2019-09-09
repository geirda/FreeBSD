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

# Make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        emulate -L zsh
        printf '%s' ${terminfo[smkx]}
    }
    function zle-line-finish () {
        emulate -L zsh
        printf '%s' ${terminfo[rmkx]}
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# Shell prompt and colors
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='236'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='10'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='12'
POWERLEVEL9K_DIR_HOME_BACKGROUND='12'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='12'
POWERLEVEL9K_STATUS_OK_BACKGROUND='8'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='11'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='8'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='10'
POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS='0.05'
POWERLEVEL9K_VI_INSERT_MODE_STRING='INSERT'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='NORMAL'﻿

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

case "$TERM" in
st*)
	source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
	;;
*)
	PS1='%B%F{green}%n@%m %B%F{blue}%~%F{reset}%b> '
	;;
esac

export LSCOLORS=ExGxBxDxCxefedhbagacad

# Aliases
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias ls='exa --group-directories-first'
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
bindkey "^[[3~" delete-char
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

fortune
