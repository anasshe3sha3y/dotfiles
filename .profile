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
