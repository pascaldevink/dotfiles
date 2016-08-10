#############################################################
# Generic configuration that applies to all shells
#############################################################

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
hostname=$(hostname)
source ~/Dropbox/Private/dotfiles/$hostname/.shellfn
source ~/Dropbox/Private/dotfiles/$hostname/.profile
