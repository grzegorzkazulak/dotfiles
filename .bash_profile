if [[ -s /Users/grzegorzkazulak/.rvm/scripts/rvm ]] ; then source /Users/grzegorzkazulak/.rvm/scripts/rvm ; fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/ruby-enterprise/bin:/usr/local/Cellar/gettext/0.17/bin/"

export PS1='\[\e[37;1m\]\w\[\e[32;1m\] $(parse_git_branch)\[\e[37;1m\]$ \[\e[0m\]'

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ss="script/server"
alias sc="script/console"
alias mm="memcached -vv"
alias cdd="cd /Users/grzegorzkazulak/Development"
alias redis="redis-server /usr/local/etc/redis.conf"
# source ~/ruby_switcher.sh

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
function gg(){
  git commit -v -a -m "$*"
}
alias sg="script/generate"
alias gs="git status"

export RUBY_HEAP_MIN_SLOTS=500000 
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 
export RUBY_GC_MALLOC_LIMIT=60000000 

export CAPP_BUILD="/Users/grzegorzkazulak/Development/cappuccino_build"