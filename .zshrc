#  ____                  _                          _     _ 
# / ___| __ _  ___   ___| |__   ___ _ __   __ _ ___| |__ (_)
#| |  _ / _` |/ _ \ / __| '_ \ / _ \ '_ \ / _` |_  / '_ \| |
#| |_| | (_| | (_) | (__| | | |  __/ | | | (_| |/ /| | | | |
# \____|\__,_|\___/ \___|_| |_|\___|_| |_|\__, /___|_| |_|_|
#                                         |___/             

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH=$PATH:/Users/kounarushi/Applications/MATLAB_R2017b.app/bin

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        zsh-autosuggestions
        git
        zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

export HOMEBREW_NO_AUTO_UPDATE=true
alias re='ranger'
alias zp='vim ~/.zshrc'
alias ep='e ~/.emacs'
alias vp='vim -p ~/.vimrc  ~/.vim/vimrc/*'
alias tp='vim ~/.tmux.conf'
alias de='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias mc='cd ~/mycode'
alias ll="ls -lh"

# Git Realted
alias grh="git reset --hard"
alias gl="git log"
alias gs="git status"
alias gc="git commit -am"
alias gcl="git clone"
alias gp="git push -u origin master"
alias nogit="find . -name ".git" | xargs rm -Rf"
alias cleangit="git checkout --orphan latest_branch; git add -A; git commit -am \"commit message\";git branch -D master; git branch -m master; git push -f origin master;rm -rf .git/refs/original/;git reflog expire --expire=now --all;git fsck --full --unreachable;git repack -A -d;git gc --aggressive --prune=now;git push --force origin master"

# Quickly shell 
alias v="vim"
alias e="emacs"
alias o="open ."
alias c="code"
alias C="code ."
alias sz="du -sh"
alias t="touch"
alias mk="mkdir"
alias s="source"
alias n="neofetch"
# brew or your package manager
alias b="brew"
alias bi="brew install"
alias bu="brew uninstall"
# python3
alias p3="python3"
# tmux
alias tt="tmux"
alias tta="tmux a -t"
alias ttnew="tmux new -s"
# go
alias cdg='cd ~/go'
# backup
alias backpush='sh ~/sys_backup/syspush.sh'
alias backpull='sh ~/sys_backup/syspull.sh'
# website
alias wang='cd /Users/kounarushi/Documents/我的创作/website;npx hexo g -d'
alias web='cd /Users/kounarushi/Documents/我的创作/website/source/_posts'
alias webn='web;npx hexo new '
# Clean log
alias cleanlog="cd /private/var/log/asl/;sudo rm -rf *.asl;cd"
alias ali='ssh kounarushi@8.131.75.25'
# latex
alias rmd="echo '''\\\usepackage{ctex} 
''' > header.tex"

# ncdu && tldr
alias h='tldr'
alias cl='ncdu'
# camera
alias 4k='open /Volumes/Untitled\ 1/PRIVATE/M4ROOT/CLIP/;open /Volumes/Untitled\ 1/DCIM/100MSDCF/;open /Volumes/Untitled\ 1/PRIVATE/AVCHD/BDMV/STREAM ;open ~/Desktop' 
alias porn='open /Volumes/Samsung_T5/System\ Volume\ Information/XXOO/pron/'
#
#
# fzf 
vf(){
    vim $(fzf)
}
of(){
    open $(fzf)
}
cdf(){
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}


## Automation
kill `pgrep Adobe`
