# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse vagrant)
plugins=(git rvm rails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin:/usr/local/mysql/bin

# Pretty pretty prompt
autoload -U colors
colors
setopt prompt_subst

# Set editor
export EDITOR="vim"

# Construct prompt
export PS1=$'
%{$fg[green]%}♦ %d%{$fg[blue]%}%{`ruby -e \'(%x{git branch 2> /dev/null} =~ /^\\*\\s(.\*)/; print \" #{$1}\")\'`%}%{$reset_color%}
%{$fg[yellow]%}♢ %{$reset_color%}'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting