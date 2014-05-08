alias reload='. ~/.zshrc'
alias smtp-server='sudo python -m smtpd -n -c DebuggingServer localhost:25'
alias cdw='cd $HOME/web/Projects'
alias pinguntilback='until ping -W1 -c1 8.8.8.8; do sleep 5; done && say the internet is back'
alias dotfiles="$EDITOR $DOTS"
