# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
#alias gl='git lg'
#alias gp='git push origin HEAD'
# push and track current branch to origin
#alias gp="git push -u origin $(git rev-parse --abbrev-ref HEAD)"
#alias gpur="git pull --rebase"

# git diff
#alias gd='git diff'
#alias gdt='git difftool -y -t Kaleidoscope'

# git commit
#alias gc='git commit'
#alias gca='git commit -a'
#alias gcm=it commit -m'

# git branches
#alias gco='git checkout'
#alias gb='git branch'

# git status
#alias gss="git status -sb" # upgrade your git if -sb breaks for you. it's fun.

# git log
#alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
#alias git-weekoverview='git log --author=$USER --format="- %B" --since=-7days --reverse' #|mail -s "What I've done this week" boss@company\.com
#alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
