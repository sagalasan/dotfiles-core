#zsh-compatible

function update_dotfiles {
  pushd ~/dotfiles
  git pull
  git submodule update --recursive --remote
  popd
}
