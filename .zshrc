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

