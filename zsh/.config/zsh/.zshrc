#all the config are set on the .zhprofile
#don't forget to add the .zshenv to your $HOME
#make sure to refer to the Z shell manual for any inquieries > https://zsh.sourceforge.io/Doc

#alias files
[ -f "$ZDOTDIR/.aliases.zsh" ] && source "$ZDOTDIR/.aliases.zsh"

#MODULES
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

#OPTIONS
setopt auto_cd #you can just simply type the name of a directory, and it will become the current directory
#some hist option for prevent duplicate, share, add, etc.
setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt interactive_comments #interactive comments
setopt noclobber #prevents to accidentally overwritting existing file 

#STYLE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
#more style later

#KEYBINDS
bindkey -v
bindkey "^a" beginning-of-line
bindkey "^b" end-of-line
bindkey "^k" kill-line
bindkey "^K" history-search-backward
bindkey "^J" history-search-forward

#HISTORY
HISTSIZE=50000
SAVEHIST=50000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTCONTROL=ignoreboth
HISTDUP=erase

#FZF
source <(fzf --zsh)
bindkey "^R" fzf-history-widget

#STARSHIP 
eval "$(starship init zsh)"

#PLUGGINGS
#if you want to add your favorite plugging since i don't use any plugging manager you can use git clone <repo_url> $ZDOTDIR/<plugin-name>

[ -f "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Created by `pipx` on 2026-01-03 16:20:24
export PATH="$PATH:/Users/forsplinter/.local/bin"
