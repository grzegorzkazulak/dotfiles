export EC2_HOME=~/.ec2
export PATH=$PATH:/Users/grzegorzkazulak/Downloads/appengine-java-sdk-1.2.1/bin
export EC2_PRIVATE_KEY=pk-DBAVKZHOEQY4VHXULQ7664DVY67DKK4X.pem
export EC2_CERT=cert-DBAVKZHOEQY4VHXULQ7664DVY67DKK4X.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
export EC2_URL=https://eu-west-1.ec2.amazonaws.com
export EDITOR=mate
export PATH=${PATH}:/Users/grzegorzkazulak/android-sdk15/tools

# -- start rip config -- #
RIPDIR=/Users/grzegorzkazulak/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #

alias ss="script/server"
alias sc="script/console"
alias mm="memcached -vv"
alias cdd="cd /Users/grzegorzkazulak/Development"
source ~/ruby_switcher.sh

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
function gg(){
  git commit -v -a -m "$*"
}
alias sg="script/generate"
alias gs="git status"
