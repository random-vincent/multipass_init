curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
# source ~/.zshrc

echo "nvm version :"
nvm --version
echo "install node stable version :"
NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
nvm install stable
nvm use stable

echo "node 版本:"
node -v
echo "npm 版本:"
npm -v

npm i npm -g
npm i nrm -g

nrm use taobao
