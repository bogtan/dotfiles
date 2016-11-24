export LANG=en_US.UTF-8

#source /usr/local/bin/virtualenvwrapper.sh
#source $HOME/.work_directories


# Path to your oh-my-zsh configuration.
ZSH=$HOME/Work/Personal/dotfiles/zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="dieter"
# ZSH_THEME="materialshell-dark"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# plugins=(git osx history history-substring-search terminalapp brew completion encode64 python)
plugins=(git osx history history-substring-search brew encode64 python)

source $ZSH/oh-my-zsh.sh

# User configuration

HOMEBREW_PREFIX=/usr/local

PATH="$(brew --prefix josegonzalez/php/php55)/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

GIT_LOG_FORMAT="%C(yellow)%h%C(reset) %C(blue)%an"
GIT_LOG_FORMAT+=" %C(green)%ad%C(red)%d%C(reset)
        %s
"
export GIT_LOG_FORMAT

GLL='git log --graph --branches --remotes --abbrev-commit '
GLL+='--date=relative --decorate --pretty=format:"$GIT_LOG_FORMAT"'
alias gll=$GLL

# pip should only run if there is a virtualenv currently activated
#export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Unable bash completition
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   . $(brew --prefix)/etc/bash_completion
# fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && bash `brew --prefix`/etc/autojump.sh

# Load aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
eval "$(rbenv init -)"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
export PATH="/usr/local/lib/node_modules/karma/bin:/usr/local/sbin:$HOME/.rbenv/shims:/usr/local/opt/php54/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$HOME/Work/Personal/commands:$PATH"

alias gc="git checkout"

export NVM_DIR="/Users/bogtan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# myIP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}
