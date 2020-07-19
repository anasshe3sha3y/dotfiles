ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
        for fgc in $(seq 30 37); do
		# background colors
                for bgc in $(seq 40 47); do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}



alias R="radian -q"
alias alg='alias|grep'
alias c='clear'
alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias e='exit'
alias grep='grep --color=auto'
alias h='history'
alias m='cmatrix -anu 2 -C red'
alias more=less
alias n='nnn -H'
alias pmid2bib='pubmed-bibtex'
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-synchronize="rsync -avzu --delete --progress -h"
alias rsync-update="rsync -avzu --progress -h"
alias t='tmux'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
export BROWSER=/usr/bin/brave
export EDITOR=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export LANG=en_US.UTF-8
export NNN_BMS='c:~/.config/;d:~/Documents;D:~/Downloads/;e:/etc/;P:~/Pictures/;t:~/rtorrent/download/;u:/usr/;v:~/.vim/'
export NNN_COLORS='2361'
export NNN_PLUG='p:pdfview;v:imageview;d:diff;f:finder;2:dups'
export NNN_TRASH=1
export NNN_USE_EDITOR=1
export MANPATH="/usr/local/man:$MANPATH"
export PATH=${PATH}:/home/she3o/.local/bin/edirect:/home/she3o/bin
export QT_QPA_PLATFORMTHEME="qt5ct"
export VISUAL=nvim
[[ -n "$NNNLVL" ]] && PS1="N$NNNLVL $PS1"
[[ $0 == "bash" ]] && PS1="\T $PS1"
[[ $(echo $0|grep -o "zsh") == "zsh" ]] && PS1="%T $PS1"

fortune
