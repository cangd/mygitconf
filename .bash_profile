if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

alias gs='git status '
alias ga='git add'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gr='git reset'
alias gHARD='git reset --hard'
alias gsoft='git reset HEAD'
alias got='git '
alias get='git '

alias ls='ls -lahrt'

alias di='docker images'
alias dps='docker ps -a'
alias dclean='docker rm $(docker ps -a -q)'
alias diclean='docker rmi $(docker images)'

alias reload='. ~/.bash_profile'


export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home
export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home

launchctl setenv JAVA_HOME $JAVA_HOME
~

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

export PATH=$PATH:/Users/cangdinh/bin/slack-theme
export SLACK_THEME_SHELL_PROFILE="/Users/cangdinh/.bash_profile"
