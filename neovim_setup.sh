sudo apt update; sudo apt install git

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc

git clone https://github.com/LazyVim/starter $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git

sudo apt install fd-find
sudo apt-get install ripgrep
sudo apt install gcc

# Download and install nerd font 
sudo apt-get install unzip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip -d $HOME/Downloads/
sudo unzip $HOME/Downloads/JetBrainsMono.zip -d $HOME/Downloads/JetBrainsMono/

nvim

