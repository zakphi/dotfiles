alias rt='tmux source-file ~/.tmux.conf; echo tmux config reloaded'
alias rz='clear; source ~/.zshrc; echo zsh config reloaded'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder'
alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder'
alias fs='foreman start -p 3000'
alias nfs='nf start'
alias htpc='ssh zakphi@10.0.1.21'
alias cra='create-react-app'
alias rails_reset='rails db:drop && rails db:create && rails db:migrate && rails db:seed'
alias subl='open -a "Sublime Text"'
alias code='open -a "Visual Studio Code"'
alias atom='open -a "Atom"'
alias nls='npm list -g --depth=0'

getjq(){
  curl -f http://code.jquery.com/jquery-3.3.1.min.js > jquery.js
  if [ -s jquery.js ]
  then
    echo 'Download Successful.'
  else
    rm jquery.js
    echo 'ERROR: jQuery download failed, file removed.'
  fi
}

getwp(){
  curl -O https://wordpress.org/latest.zip
  echo 'download complete'
}

rogue(){
  PORTS=('3000' '3001' '4567' '6379' '8000' '8888' '27017')
  MESSAGE='> checking for processes on port'
  COMMAND='lsof'

  for PORT in $PORTS; do
    echo "${MESSAGE} ${PORT}"
    $COMMAND -i TCP:$PORT
  done

  echo "> use the 'kill' command with the 'PID' of the process you want to quit"
}
