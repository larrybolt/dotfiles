# config wise
alias reload='. ~/.zshrc'
alias dotfiles="$EDITOR $DOTS"

# directory navigation
mkcd ()
{
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# usefull
alias smtp-server='sudo python -m smtpd -n -c DebuggingServer localhost:25'
alias pinguntilback='until ping -W1 -c1 8.8.8.8; do sleep 5; done && say the internet is back'

# update all
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"


# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

hr() {
  setopt promptsubst
  PS1=$'%{\e(0%}${(r:$COLUMNS::q:)}%{\e(B%}'$PS1
}

alias msgdone="osascript -e 'display notification \"DONE\" with title \"DONE\"'"
