#PS1='\[$(tput setaf 2)\]\u@\h \W>\[\e[0m\] '

function shortwd() {
  num_dirs=3
  pwd_symbol="..."
  newPWD="${PWD/#$HOME/~}"
  if [ $(echo -n $newPWD | awk -F '/' '{print NF}') -gt $num_dirs ]; then
      newPWD=$(echo -n $newPWD | awk -F '/' '{print $1 "/.../" $(NF-1) "/" $(NF)}')
  fi
  echo -n $newPWD
}

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[38;5;211m\]$(shortwd)\[\e[38;5;48m\] $(git_branch)\n$ \[\e[0m\]'

alias ll="ls -la"

export JAVA_HOME=$(/usr/libexec/java_home)

#export PATH="/usr/local/opt/node@6/bin:$PATH"
