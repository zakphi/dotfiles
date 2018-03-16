HOME=${HOME}
PWD=`pwd`

dotfiles=(".zshrc" ".tmux.conf" ".vimrc")
for dotfile in "${dotfiles[@]}"
  do
  ln -s ${PWD}/${dotfile} ${HOME}/${dotfile}
  echo "Create symlink ${HOME}/${dotfile}"
done