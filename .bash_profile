
alias decrypt="keybase pgp decrypt -m"
alias tellJ="keybase pgp encrypt jamesonev -m"
alias bashprofile="vim ~/.bash_profile"
alias forget="rm ~/.bash_history"
alias bandit="bandit.labs.overthewire.org"
alias pi="ssh admin@192.168.1.3"
alias seeip="curl ipinfo.io/ip"
alias scm="scheme --quiet <"
alias refresh="source ~/.bash_profile"
alias spongebob="python /Users/prestonevans/Developer/pythonLibrary/spongebob.py"
alias dv="cd ~/Developer"
primetest(){
  scheme --quiet --args $1 < /Users/prestonevans/Developer/lisp/utils/test-prime.scm
}  
ndir(){
  mkdir $1;
  cd $1; 
}
textJ() {
	msg=$(keybase pgp encrypt jamesonev -m "$1")
	osascript -e "tell application \"Messages\" to send \"$msg\" to buddy \"Hermano\""
}
textme() {
	msg=$(keybase pgp encrypt prevans -m "$1")
	osascript -e "tell application \"Messages\" to send \"$msg\" to buddy \"Preston Evans\""
}

# osascript -e "using terms from application "Messages" on message received theMessage from \"Preston Evans\ tell application iTerm2 decrypt theMessage"  
# using terms from application "Messages"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/prestonevans/Library/Python/3.7/bin:$PATH"
export PATH="/usr/local/bin/:$PATH"
export PATH="/usr/local/lib/node_modules/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

