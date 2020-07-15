alias n='nnn -H'
alias c='clear'
alias h='history'
alias v='nvim'
alias e='exit'
alias t='tmux'
alias m='cmatrix -anu 2 -C red'
alias pmid2bib='pubmed-bibtex'
alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias R="R -q"
alias more=less
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export NNN_COLORS='2361'
export BROWSER=/usr/bin/brave
#export GITHUB_PAT='cb6e4901eb08c1181aadadb95cfbaa3b171131bf'
export VISUAL=nvim
export EDITOR="$VISUAL"
export NNN_USE_EDITOR=1
export NNN_PLUG='p:pdfview;v:imageview;d:diff;f:finder;2:dups'
export NNN_TRASH=1
export NNN_BMS='c:~/.config/;d:~/Documents;D:~/Downloads/;e:/etc/;P:~/Pictures/;t:~/rtorrent/download/;u:/usr/;v:~/.vim/'
export PATH=${PATH}:/home/she3o/.local/bin/edirect
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
fortune
