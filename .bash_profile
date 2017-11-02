### Personal Preferences ###

source ~/.git-completion.bash

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Git Prompt Settings
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Crunch
source ~/.bash-git-prompt/gitprompt.sh

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

alias ll='ls -alGfh'
alias gitc='git commit -m'
alias gits='git status'
alias gitb='git branch -a'
