export PATH="$HOME/.sfs:$PATH"

# We're power users.
export PATH="/usr/local/sbin:$PATH"

# If homebrew exists, push it on the path
if [ -d "$HOMEBREW" ]; then
  export PATH="$HOMEBREW/bin:$PATH"
fi

# If rbenv exists, pull it in
if [ -x `command which rbenv` ]; then
  eval "$($(command which rbenv) init -)"
fi

# Use our dotfile bin directory
export PATH="$ZSH/bin:$PATH"

# Run commands from PWD's bin directory
export PATH="./bin:$PATH"


export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
