# mygitconf

## Do this when setting up a new mac

```
# This script installs homebrew and via homebrew-cask all the depending apps

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cask install telegram
brew cask install iterm2
brew cask install brave-browser
brew cask install google-chrome
brew cask install docker
brew cask install spotify
brew cask install alfred3
brew cask install Sourcetree

brew cask install visual-studio-code
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens

git config --global user.name Cang Dinh

brew install ack
brew install jq
brew install gpg2
brew install bash-git-prompt
brew install git bash-completion
brew install tree
```

### Clone this repo and copy the files to home 

`cp .bash_profile .gitconfig ~/`

### SSH Key

Like 

* create ssh key

```
# Create ssh key and add to GitLab/GitHub
# ssh-keygen -t -C "WhateverYouLie"
# TODO: afterwards copy the content of the ~/.ssh/id_rsa.pub and paste it to the GitLab/GitHub settings
```

* add ssh key to keychain

1. `ssh-add -K ~/.ssh/your-private-key-file`
2. `touch .ssh/config`

3. Add following config file to .ssh/config
```
Host *
        UseKeychain yes
        AddKeysToAgent yes
        IdentityFile ~/.ssh/id_rsa
```