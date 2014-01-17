alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

#Aliases for improved directory listing
#The --color=tty option shows items in different colors according to their type.
#The -F option appends a symbol after entries to indicate their types.
alias ls='ls -F' #Regular lsi
alias l.='ls -dF .[a-zA-Z0-9]*' #Shows only dotfiles
alias ll='ls -alhF' #Long listing
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#Use human-readable filesizes
alias duh='du -h'
alias dfu='df -h'

#Miscellaneous & common typos
alias bzip2='bzip2 -v'
alias j='jobs'
alias cd..='cd ..'
alias ccd='cd ~/ && clear'
alias hist='history | grep $1'
alias n='nautilus $1'
alias cc='clear'
alias ss='sudo su -'

#Automatically list directory after each cd
#cd() {
#	if [ -n "$1" ]; then
#		builtin cd "$@" && ls
#	else
#		builtin cd ~ && ls
#	fi
#}

#Git aliases
alias ga='git add'
alias gp='git push'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)&lt;%an&gt;%Creset' --abbrev-commit"
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias glod='git log --oneline --decorate'
alias gs='git show --full-index'
alias gsno='git show --name-only'
alias gpot='git push origin --tags'

GIT_LOG_FORMAT="%C(yellow)%h%C(reset) %C(blue)%an"
GIT_LOG_FORMAT+=" %C(green)%ad%C(red)%d%C(reset)
        %s
"
export GIT_LOG_FORMAT

GLL='git log --graph --branches --remotes --abbrev-commit '
GLL+='--date=relative --decorate --pretty=format:"$GIT_LOG_FORMAT"'
alias gll=$GLL

#alias gll='git log --branches --remotes --tags --graph --oneline --decorate'

alias activate='. sandbox/bin/activate'
alias startit='python manage.py runserver'

# MySQL aliases
alias mysql_stop="sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias mysql_start="sudo /Library/StartupItems/MySQLCOM/MySQLCOM start"
alias mysql_restart="sudo /Library/StartupItems/MySQLCOM/MySQLCOM restart"

# VIM
alias upvim="vim -u ~/.bundles.vim +BundleInstall! +q"

