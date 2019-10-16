rubocop-compare() {
  commit=$1
  shift
  rubocop_command="bundle exec rubocop $@"

  git stash
  git checkout $commit
  rubocop_commit=$(mktemp)
  eval $rubocop_command > $rubocop_commit

  git checkout -
  git stash pop
  rubocop_current=$(mktemp)
  eval $rubocop_command > $rubocop_current

  diff $rubocop_commit $rubocop_current
  rm $rubocop_commit $rubocop_current
}

reload-shell() {
  source ~/.zshrc
}

heroku-push() {
  if [ $# -eq 0 ]; then
    echo "Usage: heroku-push [app]"
    return 1
  fi
  app="$1"
  read -re "?Are you sure you want to push the current branch to $app?"
  git push -f git@heroku.com:$app.git HEAD:master
}

etargz() {
  mkdir -p $2 && tar xzvf $1 -C $2
}

cxtest() {
  CONVOX_RACK=test convox "$@" 
}

cx() {
  cxtest "$@"
}

cxstaging() {
  CONVOX_RACK=staging convox "$@"
}

cxprod() {
  CONVOX_RACK=prod convox "$@"
}
