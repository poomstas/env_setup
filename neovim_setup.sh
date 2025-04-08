sudo apt update
sudo apt install git

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>~/.bashrc

git clone https://github.com/LazyVim/starter $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git

sudo apt install fd-find
sudo apt-get install ripgrep
sudo apt install gcc

# Download and install nerd font (Need this on the client machine)
# sudo apt-get install unzip
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip -d $HOME/Downloads/
# sudo unzip $HOME/Downloads/JetBrainsMono.zip -d $HOME/.local/share/fonts/

# Install node.js required for neovim Copilot
curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
# To check nodejs installation, do: node -v

# Add 80-char line in neovim
echo 'vim.opt.colorcolumn = "80"' >>~/.config/nvim/init.lua # In vim, do: set colorcolumn=80

# Install neovim Copilot: https://www.youtube.com/watch?v=c9y7bkk-r7u&t=92s&ab_channel=typecraft
git clone https://github.com/github/copilot.vim ~/.config/nvim/pack/github/start/copilot.vim

file_path="$HOME/.config/nvim/lua/plugins/copilot.lua"
echo 'return {
    "github/copilot.vim",
    lazy=false,
}' >"$file_path"

# Run below in neovim:
# :Copilot setup
# :Copilot enable
