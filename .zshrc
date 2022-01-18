# Load TheFuck.
eval $(thefuck --alias)

# Make sure YADM encryption can work.
export GPG_TTY=$(tty)

# Load antigen.
source "/opt/homebrew/opt/antigen/share/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle macos
antigen bundle colorize
antigen bundle docker-compose
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Auto suggestions bundle.
antigen bundle zsh-users/zsh-autosuggestions

# Load the Spaceship theme.
antigen theme spaceship-prompt/spaceship-prompt

export SPACESHIP_PROMPT_ORDER=(
    time
    dir
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

# Tell Antigen that you're done.
antigen apply

# Initiatize fsf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH folders.
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Message of the day.
fortune | lolcat -f | boxes -d unicornthink
