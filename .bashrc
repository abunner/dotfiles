if [ -x /usr/bin/tput ] && tput setaf 1 >& /dev/null; then
  PS1="\[\e[1;36m\]\t \[\e[0m\]| \[\e[0;32m\]\w\[\e[0m\] \$ "
fi
