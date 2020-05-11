touch ~/.gitingore_global
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br 'branch'
git config --global alias.mg 'merge'
git config --global alias.ci 'commit'
git config --global alias.last 'log -1 HEAD'
git config --global alias.ls 'log --pretty=format:\"%C(yellow)%h %C(blue)%ad %C(red)%d %C(reset)%s %C(green)[%cn]\" --decorate --date=short'
git config --global alias.lg 'log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
git config --global alias.hist 'log --pretty=format:\"%C(yellow)%h %C(red)%d %C(reset)%s %C(green)[%an] %C(blue)%ad\" --topo-order --graph --date=short'
git config --global alias.latest 'for-each-ref --sort=-committerdate --format=\"%(committername)@%(refname:short) [%(committerdate:short)] %(contents)\"'
git config --global alias.master 'checkout master'
git config --global alias.dev 'checkout dev'
git config --global alias.test 'checkout test'
git config --global user.name ''
git config --global user.email ''
git  config  --global core.excludesfile   ~/.gitingore_global
echo '.DS_Store' > ~/.gitingore_global
echo 'GIT CONFIG RESULT:\n'
git config --list
