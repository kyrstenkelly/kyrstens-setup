# ---------------------
# Kysten's Bash Profile
# ---------------------

source $(brew — prefix nvm)/nvm.sh
export PATH="/usr/local/bin:$PATH"

# ----- SETUP GIT -----
source ~/.git-completion.bash
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
# Git Prompt Settings
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Crunch
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# ----- ALIASES -----
alias ll='ls -alGfh'
alias gitc='git commit -m'
alias gits='git status'
alias gitb='git branch -a'
alias gitl='git log --oneline --decorate'
alias gitca='git commit --amend --no-edit'
alias npmi='nvm use && npm install'

# ----- GO VARIABLES -----
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:${GOPATH}/bin:${GOROOT}/bin"
export GO=$GOPATH/src/github.com


# ----- HELPER FUNCS -----
k() {
    lsof -i tcp:"$1" | awk '{if (NR!=1) {print $2}}' | xargs kill
}

# ----- RANDOM -----
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
