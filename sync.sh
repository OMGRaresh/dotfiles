# Sync devbox global config to local repo. Execute it after modifing the global config.
cp $HOME/.local/share/devbox/global/default/devbox.json $HOME/.dotfiles/.local/share/devbox/global/default

echo "push it to git"