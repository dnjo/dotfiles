reload-shell() {
  source ~/.zshrc
}

etargz() {
  mkdir -p $2 && tar xzvf $1 -C $2
}
