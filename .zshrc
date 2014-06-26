# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin

# Emacs style keybindings
bindkey -e

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

MYSQL=/usr/local/mysql
export PATH=$PATH:"$MYSQL/bin"
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:"$MYSQL/lib"

POSTGRES="/Applications/Postgres.app/Contents/Versions/9.3"
export PATH="$POSTGRES/bin":$PATH
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:"$POSTGRES/lib"

ANACONDA=~/anaconda/bin
export PATH=$ANACONDA:$PATH

