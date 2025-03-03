# Install Oh My Zsh
if [[ -f $HOME/.oh-my-zsh ]]; then
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh already installed" 
fi

# Install devbox
if ! which devbox &> /dev/null; then
    echo "Installing devbox"
    curl -fsSL https://get.jetify.com/devbox | bash
  else
    echo "devbox already installed" 
fi

# Copy global devbox config
cp $HOME/.dotfiles/.local/share/devbox/global/default/devbox.json $HOME/.local/share/devbox/global/default

# Source all dotfiles
devbox run stow