HOME='~'

source /usr/local/bin/virtualenvwrapper.sh
source "$HOME/.work_directories"
HOMEBREW_PREFIX=/usr/local
PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Unable bash completition
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
eval "$(rbenv init -)"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
export PATH=/usr/local/sbin:$HOME/.rbenv/shims:/usr/local/opt/php54/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH
