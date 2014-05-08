alias spacelaunch="play -n -c1 synth whitenoise band -n 100 20 band -n 50 20 gain +30 fade h 1 86400 1"
alias clear="doge && echo 'use CTRL+L'"
alias networksound="sudo tcpdump -n -w- | play --buffer 10000 -r 8000 -b 8 -c 1 -e signed-integer -t raw - band 2k vol 0.1"

scp(){ if [[ "$@" =~ : ]];then /usr/bin/scp $@ ; else echo 'You forgot the colon dumbass!'; fi;} # Catch a common scp mistake.

alias cow="curl -s www.climagic\.org/ascii/explodingcow-animation-1995.gz |zcat |pv -L2400 -q"
