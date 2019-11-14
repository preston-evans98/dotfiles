
alias decrypt="keybase pgp decrypt -m"
alias tellJ="keybase pgp encrypt jamesonev -m"
alias bashprofile="vim ~/.bash_profile"
alias forget="rm ~/.bash_history"
alias bandit="bandit.labs.overthewire.org"
alias pi="ssh steve@192.168.1.5"
alias seeip="curl ipinfo.io/ip"
alias scm="scheme --quiet <"
alias refresh="source ~/.bash_profile"
alias spongebob="python /Users/prestonevans/Developer/pythonLibrary/spongebob.py"
alias dv="cd ~/Developer"
alias proj="cd ~/Developer/cs300/project"
ndir(){
  mkdir $1;
  cd $1; 
}
textJ() {
	msg=$(keybase pgp encrypt jamesonev -m "$1")
	osascript -e "tell application \"Messages\" to send \"$msg\" to buddy \"Hermano\""
}

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/prestonevans/Library/Python/3.7/bin:$PATH"
export PATH="/usr/local/bin/:$PATH"
export PATH="/usr/local/lib/node_modules/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

