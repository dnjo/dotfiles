reload-shell() {
  source ~/.zshrc
}

etargz() {
  mkdir -p $2 && tar xzvf $1 -C $2
}

reload-gpg-agent() {
  gpgconf --kill gpg-agent
  gpgconf --launch gpg-agent
}
