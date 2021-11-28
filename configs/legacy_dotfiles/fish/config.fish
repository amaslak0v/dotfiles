set -U EDITOR vim
set -gx LC_ALL en_US.UTF-8 

# Remove initro message
set fish_greeting

### [Alias] 
alias fishrc='vim ~/.config/fish/config.fish'
alias fishrcd='cd ~/.config/fish/'
alias sfishrc='source ~/.config/fish/config.fish'

alias vimrc='vim ~/.vimrc'
alias sshconf='vim ~/.ssh/config'
alias tmuxrc='vim ~/.tmux.conf'
alias stmuxrc='tmux source ~/.tmux.conf'

alias trc='tree -C'
alias trp='tree -Cpu'
alias trd='tree -C -d'

alias clc='clear'
alias weather='curl wttr.in/Minsk'
alias rand='cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 32 | head -n'
alias ip='curl ifconfig.co'

# WF tools
alias rsync_installer='sh ~/.scripts/rsync_installer.sh'


# Autojump
if test -f /Users/amaslakou/.autojump/share/autojump/autojump.fish; . /Users/amaslakou/.autojump/share/autojump/autojump.fish; end

# FZF 
# https://github.com/junegunn/fzf/blob/master/README-VIM.md
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'
