### DOCS:
# если сломались значки - то проблема в fonts в iterm переставить на SourceCodePro+Powerline+Awesome Regular 
#


export ZSH=$HOME/.oh-my-zsh
export TERM="screen-256color"
export LS_COLORS=$LS_COLORS:'di=1;35:' 
COLORTERM="truecolor"

### THEME SETTINGS 
#
# ZSH_THEME="spaceship"
# ZSH_THEME="robbyrussell"
autoload -U promptinit; promptinit
zstyle -s ':zsh-kubectl-prompt:' separator separator
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:branch color red
zstyle execution_time show yes
prompt pure


# ZSH Plugins
plugins=(
  zsh-vi-mode
  macos
  git
  aws
  docker
  kubectl
  # zsh-kubectl-prompt
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
RPROMPT='$(kube_ps1)'$PROMPT

# Skip using my vimrc in zsh-vi-mode
# VIM_MODE_NO_DEFAULT_BINDINGS=true
ZVM_VI_EDITOR=nvim

### robbyrussell settings
# MODE_INDICATOR="%F{yellow}+%f"
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true



### ZSH Settings
# NO SHARING HISTORY!
unsetopt inc_append_history
unsetopt share_history
#Alert if bg jobs running
setopt CHECK_JOBS
#Info about bg jobs
setopt NOTIFY

source $ZSH/oh-my-zsh.sh
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # escaping python error panic


### Aliases
# dotenv
alias zshrc="vim ~/.zshrc"
alias szshrc='source ~/.zshrc'
alias vim='nvim'
alias v='vim'
alias vimrc='vim ~/.config/nvim/init.vim'
alias svimrc='source ~/.config/nvim/init.vim'
alias ohmyzsh="vim ~/.oh-my-zsh"
alias sshconf='vim ~/.ssh/config'
alias fishrc='vim ~/.config/fish/config.fish'
alias tmuxrc='vim ~/.tmux.conf'
# System 
alias cat='bat'
alias trc='tree -C'
alias trp='tree -Cpu'
alias trd='tree -C -d'
alias free_space='diskutil info / | grep "Free"'
alias pip='pip3'
# alias ll="exa -la --group-directories-first"
alias l="exa -la --group-directories-first"
alias wattage='system_profiler SPPowerDataType | rg Wattage'
# Web tools
alias weather_minsk='curl wttr.in/Minsk'
alias weather='curl wttr.in'
alias ip='curl ifconfig.co'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias star_wars='telnet towel.blinkenlights.nl'
# tools
alias local-ip='ipconfig getifaddr en0'
alias tf='terraform'
alias subl='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'



# Resolve zsh-vi-mode unable to use ZSH: 
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

### FZF
# CTRL + E - search&open file in vim
# bindkey -s '^e' 'vim $(fzf)\n'

# FZF defaults
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'
function cd() {
    if [[ "$#" != 0 ]]; then
        builtin cd "$@";
        return
    fi
    while true; do
        local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
        local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p --color=always "${__cd_path}";
        ')"
        [[ ${#dir} != 0 ]] || return 0
        builtin cd "$dir" &> /dev/null
    done
}
#
# FZF ctrl+R history search and other autocompletes
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
# find-in-file - usage: fif <SEARCH_TERM>
# fif() {
#   if [ ! "$#" -gt 0 ]; then
#     echo "Need a string to search for!";
#     return 1;
#   fi  rg --files-with-matches --no-messages "$1" | fzf $FZF_PREVIEW_WINDOW --preview "rg --ignore-case --pretty --context 10 '$1' {}"
# }


#========Exports=========
export EDITOR="vim" 
export MANPATH="/usr/local/man"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:$HOME/bin"
# k8 editor
export KUBE_EDITOR='nvim'

# Inspectorio toolset
export PATH="$PATH:/Users/antonmaslakov/Workspace/repos/terraform/tools/"

export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

# Iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amaslakou/.sdkman"
[[ -s "/Users/amaslakou/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amaslakou/.sdkman/bin/sdkman-init.sh"

# GCLOUD
GCLOUD_PATH='/Users/antonmaslakov/.gcloud-sdk'

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$GCLOUD_PATH/path.zsh.inc" ]; then . "$GCLOUD_PATH/path.zsh.inc"; fi

# # The next line enables shell command completion for gcloud.
# if [ -f "$GCLOUD_PATH/completion.zsh.inc" ]; then . "$GCLOUD_PATH/completion.zsh.inc"; fi
# [[ /Users/antonmaslakov/.gcloud-sdk/bin/kubectl ]] && source <(kubectl completion zsh)

