# Go Version Manager Settings
[[ -s "/Users/simonbein/.gvm/scripts/gvm" ]] && source "/Users/simonbein/.gvm/scripts/gvm"
# GOPATH needs to be set after the GVM script is sourced, because GVM will set it to empty("")
export GOPATH="/Users/simonbein/silama-code-workbench/go"
export PATH=$PATH:$GOPATH/bin/