alias ga='git add'
alias gaa='git add -A'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gb='git branch'
alias gbrename='git branch -m'
alias gs='git status'
alias gc='git commit'
alias gcamend='git commit --amend'
alias gcfix='git commit --fixup'
alias gbd='git branch -D'
alias gpm='git pull origin main'
alias gm='git merge'
alias gr='git rebase'
alias grabort='git rebase --abort'
alias grcontinue='git rebase --continue'
alias glog='git log --oneline'
alias gpush='git push origin'
alias gplease='git push --force-with-lease'
alias grsquash='git rebase -i --autosquash'
alias brake='bundle exec rake'
alias bundlex='bundle exec'
alias gr='grep --color -r'
alias style='dev style --include-branch-commits'

function theme_with_blocks() {
  bin/rake online_store_editor:theme:with_theme_blocks
}

function delete_port_in_use() {
  lsof -wni tcp:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}
