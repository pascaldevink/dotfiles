#############################################################
# Generic configuration that applies to all shells
#############################################################

# RVM Ruby Selector
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# RVM suggests using gcc instead of llvm (which Apple now symlinks gcc to)
export CC="/usr/bin/gcc"
export CFLAGS="-O2 -arch x86_64"
export LDFLAGS="-L/usr/local/lib"
export CPPFLAGS="-I/usr/local/include"

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases
# Private/Proprietary shell aliases (not to be checked into the public repo) :)
#source ~/Dropbox/Private/Boxes/osx/.shellaliases
