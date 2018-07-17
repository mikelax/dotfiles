# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
# export PS1="\u@\h \W\[\033[32m\]\$(type -t parse_git_branch >/dev/null && parse_git_branch)\[\033[00m\] $ "
export PS1='\[$(tput setaf 7)\]\u@\[$(tput setaf 2)\]\h:\[$(tput setaf 6)\]\W\[$(tput setaf 1)\]$(parse_git_branch)\[$(tput sgr0)\] $ '

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias ls='ls -GFh'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad # light bg color
# export LSCOLORS=GxFxCxDxBxegedabagaced # dark bg color

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export GPG_TTY=$(tty)

export PATH="$HOME/.fastlane/bin:$PATH"
eval "$(rbenv init -)"


# added by Anaconda3 4.4.0 installer
export PATH="/Users/mike/anaconda/bin:$PATH"

# Add Python bin to PATH, from gif-for-cli
if [ -d "$HOME/Library/Python/3.6/bin/" ] ; then
    PATH="$HOME/Library/Python/3.6/bin/:$PATH"
fi
