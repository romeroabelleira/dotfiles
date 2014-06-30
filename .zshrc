# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunrise"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler tmux history cp gem git-extras vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Terminal color support.
export TERM=xterm-256color


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### TMUX
alias tx="tmuxinator"
alias tmux="tmux -u"

# Set locale to avoid tmux utf8 errors
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


#### The Text Triumvirate
#### http://www.drbunsen.org/the-text-triumvirate/
export EDITOR="vim"
alias vim="/usr/local/Cellar/macvim/7.4-72/MacVim.app/Contents/MacOS/Vim"
alias v="vim"

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# cd automatically
setopt AUTO_CD

### RBENV
#Path
export PATH="$HOME/.rbenv/bin:$PATH"
#Autocompletion
eval "$(rbenv init -)"

### Rails
alias r="rails"
alias migrate='rake db:migrate && rake db:test:prepare'

### Git & Github
eval "$(hub alias -s)"
export GITHUB_USER="romeroabelleira"

### Amazon AWS
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.12.0/libexec"
