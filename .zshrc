## Antigen
source "$HOME/.antigen/antigen.zsh"

# oh-my-zsh
antigen use oh-my-zsh
antigen bundle robbyrussell/oh-my-zsh plugins/git
#antigen bundle robbyrussell/oh-my-zsh plugins/github
antigen bundle robbyrussell/oh-my-zsh plugins/osx
#antigen bundle robbyrussell/oh-my-zsh plugins/symfony2
#antigen bundle robbyrussell/oh-my-zsh plugins/vagrant
antigen bundle robbyrussell/oh-my-zsh plugins/colorize
#antigen bundle robbyrussell/oh-my-zsh plugins/composer
#antigen bundle robbyrussell/oh-my-zsh plugins/cp
#antigen bundle robbyrussell/oh-my-zsh plugins/bower
antigen bundle robbyrussell/oh-my-zsh plugins/brew
#antigen bundle robbyrussell/oh-my-zsh plugins/docker
#antigen bundle robbyrussell/oh-my-zsh plugins/phing
#antigen bundle robbyrussell/oh-my-zsh plugins/compleat
#antigen bundle robbyrussell/oh-my-zsh plugins/dirpersist
#antigen bundle robbyrussell/oh-my-zsh plugins/ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search # slow!

DEFAULT_USER=pascaldevink
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir symfony2_version vcs)
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
#antigen theme bhilburn/powerlevel9k powerlevel9k

antigen theme dogrocker/oh-my-zsh-powerline-cute-theme cute-theme
BULLETTRAIN_PROMPT_CHAR="🐹 "

antigen-apply

## ZSH config

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
unsetopt correct

# Thefuck!
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

echo "    )                                                                         ";
echo " ( /(                       )          (                                      ";
echo " )\())   (   (      (    ( /(    (     )\ )  (       )  (  (                  ";
echo "((_)\   ))\  )(    ))\   )\())  ))\   (()/(  )(   ( /(  )\))(  (    (     (   ";
echo " _((_) /((_)(()\  /((_) ((_)\  /((_)   ((_))(()\  )(_))((_))\  )\   )\ )  )\  ";
echo "| || |(_))   ((_)(_))   | |(_)(_))     _| |  ((_)((_)_  (()(_)((_) _(_/( ((_) ";
echo "| __ |/ -_) | '_|/ -_)  | '_ \/ -_)  / _\` | | '_|/ _\` |/ _\` |/ _ \| ' \))(_-< ";
echo "|_||_|\___| |_|  \___|  |_.__/\___|  \__,_| |_|  \__,_|\__, |\___/|_||_| /__/ ";
echo "                                                       |___/                  ";
