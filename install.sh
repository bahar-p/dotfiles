cp ~/dotfiles/.tmux.conf ~/.tmux.conf
cp ~/dotfiles/.bash_profile ~/.bash_profile
cp ~/dotfiles/.gitconfig ~/.gitconfig

echo "source ~/.bash_profile" >> ~/.zshrc

# install P4V git tools
mkdir ~/Downloads
cd ~/Downloads
wget https://cdist2.perforce.com/perforce/r18.2/bin.linux26x86_64/p4v.tgz
tar zxvf p4v.tgz
sudo mkdir /opt/p4v
cd p4v-2018.2.1687764
sudo mv * /opt/p4v
sudo ln -s /opt/p4v/bin/p4merge /usr/local/bin/p4merge


if ! command -v rg &> /dev/null; then
  sudo apt-get install -y ripgrep
fi

if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v rsync &> /dev/null; then
  sudo apt-get install -y rsync
fi