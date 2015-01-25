## Antigen
source "$HOME/.antigen/antigen.zsh"

# oh-my-zsh
antigen-use oh-my-zsh
antigen bundle robbyrussell/oh-my-zsh plugins/git
antigen bundle robbyrussell/oh-my-zsh plugins/github
antigen bundle robbyrussell/oh-my-zsh plugins/osx
antigen bundle robbyrussell/oh-my-zsh plugins/symfony2
antigen bundle robbyrussell/oh-my-zsh plugins/vagrant
antigen bundle robbyrussell/oh-my-zsh plugins/colorize
antigen bundle robbyrussell/oh-my-zsh plugins/composer
antigen bundle robbyrussell/oh-my-zsh plugins/cp
antigen bundle robbyrussell/oh-my-zsh plugins/bower
antigen bundle robbyrussell/oh-my-zsh plugins/brew
antigen bundle robbyrussell/oh-my-zsh plugins/docker
antigen bundle robbyrussell/oh-my-zsh plugins/phing
antigen bundle robbyrussell/oh-my-zsh plugins/compleat
antigen bundle robbyrussell/oh-my-zsh plugins/dirpersist
antigen bundle robbyrussell/oh-my-zsh plugins/ssh-agent

antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search

antigen theme af-magic

# oh-my-git
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style

antigen-apply

omg_ungit_prompt="%~ • "

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
