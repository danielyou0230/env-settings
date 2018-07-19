
# Setup zsh for oh-my-zsh
apt-get update
# Powerline font for Ubuntu and Debian
# other OS: https://github.com/powerline/fonts
apt-get install git zsh fonts-powerline tmux htop

# tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
vim ~/.tmux.conf.local

# Setup oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# VIM
cd ~
git clone https://github.com/dracula/vim
mv ~/vim/colors/dracula.vim ~/.vim/colors
echo "\
set nocompatible 
filetype off 
syntax on
set nu
set ai
set tabstop=4
set shiftwidth=4
set ruler
set cursorline
set mouse=a
set smartindent
color dracula
highlight CursorLine gui=underline cterm=underline ctermfg=None
" >> ~/.vimrc

rm -rf ~/vim

# Install Spaceship for oh-my-zsh
$ZSH=~/.oh-my-zsh/
echo "Installing spaceship theme for oh-my-zsh"
git clone https://github.com/denysdovhan/spaceship-prompt.git $ZSH/custom/themes/spaceship
vim ~/.zshrc
# ZSH_THEME="spaceship"
source ~/.zshrc

chsh -s $(which zsh)