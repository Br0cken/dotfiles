# .zshrc
#
# @author Jeff Geerling
# @edits Tobias Schuett
#
# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.config/zsh/aliases.zsh ]
then
  source ~/.config/zsh/aliases.zsh
fi

# Include Darwin specific files
if [[ "$(uname)" == "Darwin" ]]; then
  if [ -f ~/.config/zsh/darwin.zsh ]; then
    source ~/.config/zsh/darwin.zsh 
  fi

  if [ -f ~/.config/zsh/darwin-aliases.zsh ]; then
    source  ~/.config/zsh/darwin-aliases.zsh
  fi

  if [ -f ~/.config/zsh/darwin-functions.zsh ]; then
    source  ~/.config/zsh/darwin-functions.zsh
  fi
fi


# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Bash-style time output.
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'


# Completions.
autoload -Uz compinit && compinit
# Case insensitive.
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'


# enable fuzzy search
source <(fzf --zsh)

# starship 
eval "$(starship init zsh)"
