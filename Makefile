###### BREW CASKS and BREW
brew:
	brew cask install telegram
	brew cask install iterm2
	brew cask install brave-browser
	brew cask install google-chrome
	brew cask install docker
	brew cask install spotify
	brew cask install alfred3
	brew cask install Sourcetree
	brew cask install keepassx

	brew cask install visual-studio-code

	git config --global user.name Cang Dinh
	
	brew install ack
	brew install jq
	brew install gpg2
	brew install watch
	brew install bash-git-prompt
	brew install bash-completion@2
	brew install tree
	brew install openshift-cli
	brew install helm
	brew install kubectl
	brew install kubernetes-cli 
	brew install minikube
	brew install hyperkit
	brew install colordiff

install_bash: #run as sudo
	brew install bash
	ls -l /usr/local/bin/bash
	echo /usr/local/bin/bash >> /etc/shells
	chsh -s /usr/local/bin/bash
	bash --version
	/usr/local/bin/bash --version

##### CONFS
load_configs: load_bash_profile load_gitconfig load_iterm_config

load_bash_profile:
	mv ~/.bash_profile ~/.bash_profile.backup
	cp .bash_profile ~/.bash_profile	
	colordiff ~/.bash_profile.backup .bash_profile --fakeexitcode

load_gitconfig:
	mv ~/.gitconfig ~/.gitconfig.backup
	cp .gitconfig ~/.gitconfig
	colordiff ~/.gitconfig.backup .gitconfig --fakeexitcode

load_iterm_config:
	mv ~/Cang.json ~/Cang.json.backup
	cp Cang.json ~/itermconf/Cang.json
	colordiff ~/Cang.json.backup Cang.json --fakeexitcode

save_configs: save_gitconfig save_bash_profile

save_gitconfig:
	colordiff .gitconfig ~/.gitconfig --fakeexitcode
	cp ~/.gitconfig .gitconfig

save_bash_profile:
	colordiff .bash_profile ~/.bash_profile --fakeexitcode
	cp ~/.bash_profile .bash_profile

save_iterm_config:
	colordiff Cang.json ~/itermconf/Cang.json --fakeexitcode
	cp ~/itermconf/Cang.json Cang.json

###### SSH
# Add manually id_rsa.pub to github/gitlab/bitbucket after key creation
ssh_key:
	ssh-keygen -t rsa

add_ssh_to_keychain:
	ssh-add -K ~/.ssh/id_rsa
	cp config ~/.ssh/config

##### VS Code Extensions
code_extensions:
	code --install-extension esbenp.prettier-vscode
	code --install-extension eamodio.gitlens
	code --install-extension joaompinto.asciidoctor-vscode
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension ms-vsliveshare.vsliveshare
	code --install-extension redhat.vscode-yaml
	code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools