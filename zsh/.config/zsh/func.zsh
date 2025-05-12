setup_git_local_configfile(){
  local config_path=~/.gitconfig.local
    # check if darwin
    if [[ "$OSTYPE" == "darwin" ]]; then
      os="darwin"
    fi
    # check if gnu-linux
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
      os="linux"
    fi
    
    ln -sf ~/.config/git/config.${os} $config_path
}
