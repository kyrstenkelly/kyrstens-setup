### Personal Preferences ###

source ~/.git-completion.bash

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Git Prompt Settings
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Crunch
source ~/.bash-git-prompt/gitprompt.sh

# ----- ALIASES -----
alias ll='ls -alGfh'
alias gitc='git commit -m'
alias gits='git status'
alias gitb='git branch -a'
alias gitl='git log --oneline --decorate'
alias gitca='git commit --amend --no-edit'
alias npmi='nvm use && npm install'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Go vars
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$GOBIN:$GOROOT/bin"
export GO=$GOPATH/src/github.com


# ----- HELPER FUNCS -----
k() {
    lsof -i tcp:"$1" | awk '{if (NR!=1) {print $2}}' | xargs kill
}
