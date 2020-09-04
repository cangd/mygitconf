###### CONFS

configs: bash_profile gitconfig itermconfig

bash_profile:
	cp .bash_profile ~/	

gitconfig:
	cp .gitconfig ~/

itermconfig:
	cp Cang.json ~/itermconf

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

	brew cask install visual-studio-code

	git config --global user.name Cang Dinh

	brew install ack
	brew install jq
	brew install gpg2
	brew install bash-git-prompt
	brew install git bash-completion
	brew install tree
	brew install openshift-cli

###### SSH
# Add manually id_rsa.pub to github/gitlab/bitbucket after key creation

code_extensions:
	code --install-extension esbenp.prettier-vscode
	code --install-extension eamodio.gitlens
	code --install-extension joaompinto.asciidoctor-vscode
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension ms-vsliveshare.vsliveshare
	code --install-extension redhat.vscode-yaml

sshkey:
	ssh-keygen -t rsa

addsshtokeychain:
	ssh-add -K ~/.ssh/id_rsa
	cp config ~/.ssh/config

