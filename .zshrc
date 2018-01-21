## Antigen
source "$HOME/.antigen/antigen.zsh"

# oh-my-zsh
antigen use oh-my-zsh
antigen bundle robbyrussell/oh-my-zsh plugins/git
antigen bundle robbyrussell/oh-my-zsh plugins/osx
antigen bundle robbyrussell/oh-my-zsh plugins/colorize
antigen bundle robbyrussell/oh-my-zsh plugins/docker-compose
#antigen bundle robbyrussell/oh-my-zsh plugins/ssh-agent

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

DEFAULT_USER=pascaldevink

# spaceship theme
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
export SPACESHIP_PROMPT_ORDER=(
    time
    kubecontext
    dir
    # dockercompose
    git
    battery
    exec_time
    char
)
export SPACESHIP_BATTERY_THRESHOLD=70
export SPACESHIP_EXEC_TIME_ELAPSED=2
export SPACESHIP_EXEC_TIME_SHOW=true
export SPACESHIP_GIT_SYMBOL=' '
export SPACESHIP_KUBECONTEXT_COLOR=magenta
export SPACESHIP_KUBECONTEXT_SHOW=true
export SPACESHIP_KUBECONTEXT_SYMBOL='⎈ '
export SPACESHIP_PROMPT_ADD_NEWLINE=true
export SPACESHIP_PROMPT_SEPARATE_LINE=true
export SPACESHIP_CHAR_SYMBOL="\n ➜ "
export SPACESHIP_TIME_SHOW=true

antigen-apply

## ZSH config

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
