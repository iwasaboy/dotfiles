source ~/.git-completion.bash
source ~/.git-prompt.sh
export PROMPT_COMMAND='__git_ps1 "\u@\h:\W[\j]" "\\\$ ";'

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"

# added by Anaconda 2.0.0 installer
export PATH="$HOME/anaconda2/bin:$PATH"

# added linux brew
export PATH="$HOME/.linuxbrew/bin:$PATH"

# added by Bazel
export PATH="$HOME/bin:$PATH"

export EDITOR='vim'
export VIMRUNTIME=/usr/share/vim/vim80

# CDPATH !http://linux.101hacks.com/cd-command/cdpath/
# if test "${PS1+set}"
#   then CDPATH=$HOME/workspace
# fi

ulimit -c unlimited
ulimit -d unlimited
ulimit -f unlimited

# export HTTPS_PROXY=172.16.3.159:3128
# export HTTP_PROXY=172.16.3.159:3128


# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

eval "$(register-python-argcomplete conda)"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
