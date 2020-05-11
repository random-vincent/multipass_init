## change APT source and update apps
sudo mv /etc/apt/sources.list /etc/apt/sourses.list.backup
# sudo touch /etc/apt/sources.list
sudo cp ./apt_source_aliyun.txt /etc/apt/sources.list
sudo apt update
sudo apt upgrade
sudo apt autoremove

## install oh-my-zsh

echo "install ohmyzsh ....."

sudo apt install zsh

zsh --version

chsh -s $(which zsh)

sudo sed -i "s/\/bin\/bash$/\/bin\/zsh/g" /etc/passwd
## change hosts

sudo cp /etc/hosts /etc/hosts.backup
sudo cp /etc/cloud/templates/hosts.debian.tmpl /etc/cloud/templates/hosts.debian.tmpl.backup

sudo cp ./github.hosts /etc/hosts

sudo cp ./github.hosts /etc/cloud/templates/hosts.debian.tmpl

# ping github.com
curl github.com

#sudo echo ${githubhosts} >> /etc/cloud/templates/hosts.debian.tmpl


## ohmyzsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install autojump

echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo echo "source \${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# sudo git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo echo "source \$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions autojump)/g" ~/.zshrc

git --version

sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"bira\"/g" ~/.zshrc
