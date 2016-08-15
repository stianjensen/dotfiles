# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="stiaje"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx pip sublime virtualenvwrapper web-search git-open)

source $ZSH/oh-my-zsh.sh

#fpath=( "$HOME/.zfunctions" $fpath )

#autoload -U promptinit && promptinit
#prompt pure

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/heroku/bin:/usr/local/share/npm/bin:/Users/stiaje/.rbenv/shims:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin/


export PATH=/Library/Frameworks/UnixImageIO.framework/Programs:$PATH
export PATH=/Library/Frameworks/PROJ.framework/Programs:$PATH
export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH
export PATH=/usr/local/pgsql/bin:$PATH
export PATH=/Applications/MATLAB_R2015b.app/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/flex_sdk_4/bin:$PATH
export PATH=$HOME/.git-scripts/:$PATH

# Anaconda python, might want to uninstall
# export PATH=$HOME/anaconda/bin:$PATH

export LD_LIBRARY_PATH=/opt/openblas/lib:$LD_LIBRARY_PATH

export PYTHONPATH=~/Projects/caffe/python:$PYTHONPATH
export PYTHONPATH=~/Projects/master:$PYTHONPATH
alias caffe='~/Projects/caffe/build/tools/caffe'

export CPLUS_INCLUDE_PATH=$HOME/anaconda/include/python2.7:$HOME/anaconda/lib/python2.7/site-packages/numpy/core/include

# Virtualenv
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Projects"

# Aliases

alias git='noglob git'
alias gs='git status'
alias gb='git br'
alias gc='git commit'
alias gcb='git checkout -b'
alias gu='git up'
alias gf='cmp -s <(git branch | grep "^\* ") <(echo "* master") && echo "Force push disabled on master." || git push origin $(git branch | grep "^\* " | sed "s/^\* //") -f'

alias venv='. venv/bin/activate'
alias nin='~/Projects/nin/nin/backend/nin'
alias gitdiff='git diff --no-index'

export ANDROID_HOME=/usr/local/opt/android-sdk
