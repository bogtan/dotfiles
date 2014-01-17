export LANG=en_US.UTF-8

source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.work_directories


# Path to your oh-my-zsh configuration.
ZSH=$HOME/Work/others/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git osx django history history-substring-search terminalapp brew)

source $ZSH/oh-my-zsh.sh

# User configuration

HOMEBREW_PREFIX=/usr/local

PATH="$(brew --prefix josegonzalez/php/php54)/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

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
export PIP_REQUIRE_VIRTUALENV=true
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
export PATH="/usr/local/sbin:$HOME/.rbenv/shims:/usr/local/opt/php54/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"
