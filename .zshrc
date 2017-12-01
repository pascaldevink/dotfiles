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
bindkey "^[[1;9C" forward-word
bindkey "^[[1;9D" backward-word

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
unsetopt correct

echo "    )                                                                         ";
echo " ( /(                       )          (                                      ";
echo " )\())   (   (      (    ( /(    (     )\ )  (       )  (  (                  ";
echo "((_)\   ))\  )(    ))\   )\())  ))\   (()/(  )(   ( /(  )\))(  (    (     (   ";
echo " _((_) /((_)(()\  /((_) ((_)\  /((_)   ((_))(()\  )(_))((_))\  )\   )\ )  )\  ";
echo "| || |(_))   ((_)(_))   | |(_)(_))     _| |  ((_)((_)_  (()(_)((_) _(_/( ((_) ";
echo "| __ |/ -_) | '_|/ -_)  | '_ \/ -_)  / _\` | | '_|/ _\` |/ _\` |/ _ \| ' \))(_-< ";
echo "|_||_|\___| |_|  \___|  |_.__/\___|  \__,_| |_|  \__,_|\__, |\___/|_||_| /__/ ";
echo "                                                       |___/                  ";

curl -s --connect-timeout 1 -A '/u/johnydoe666' 'https://www.reddit.com/r/showerthoughts/top.json?sort=top&t=week&limit=100' | python2.7 -c 'import sys, random, json; randnum = random.randint(0,99); response = json.load(sys.stdin)["data"]["children"][randnum]["data"]; print "\n\"" + response["title"] + "\""; print "    -" + response["author"] + "\n";'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$HOME/.rvm/gems/ruby-2.4.2/bin:$PATH"
