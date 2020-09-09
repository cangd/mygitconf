###### CONFS

load_configs: load_bash_profile load_gitconfig load_iterm_config

load_bash_profile:
	cp .bash_profile ~/	

load_gitconfig:
	cp .gitconfig ~/

load_iterm_config:
	cp Cang.json ~/itermconf

save_configs: save_gitconfig save_bash_profile

save_gitconfig:
	cp ~/.gitconfig .

save_bash_profile:
	cp ~/.bash_profile .

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
	brew install bash-git-prompt
	brew install bash-completion@2
	brew install tree
	brew install openshift-cli
	brew install helm
	brew install kubectl
	brew install kubernetes-cli 
	brew install minikube
	brew install hyperkit
	
###### SSH
# Add manually id_rsa.pub to github/gitlab/bitbucket after key creation

code_extensions:
	code --install-extension esbenp.prettier-vscode
	code --install-extension eamodio.gitlens
	code --install-extension joaompinto.asciidoctor-vscode
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension ms-vsliveshare.vsliveshare
	code --install-extension redhat.vscode-yaml
	code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

	

ssh_key:
	ssh-keygen -t rsa

add_ssh_to_keychain:
	ssh-add -K ~/.ssh/id_rsa
	cp config ~/.ssh/config

