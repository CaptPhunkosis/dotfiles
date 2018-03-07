[ -n "$PS1" ] && source ~/.bash_profile

# Docker (default for Vagrant based boxes)
#export DOCKER_HOST=tcp://localhost:2375

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
