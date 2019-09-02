set -gx PATH $HOME/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
#set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
#alias ls "ls -F --color="auto" --group-directories-first"
alias ls "exa --group-directories-first"
alias ll "ls -l"
set -gx QT_QPA_PLATFORMTHEME qt5ct
set -gx PAGER most
set -U SXHKD_SHELL /usr/local/bin/zsh

switch $TERM
    case 'st-*' # suckless' simple terminal
                # Enable keypad, do it once before fish_postexec ever fires
        tput smkx
        function st_smkx --on-event fish_postexec
            tput smkx
        end
        function st_rmkx --on-event fish_preexec
            tput rmkx
        end
end
