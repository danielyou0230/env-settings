
$SHORTCUT=p3
$PYTHON_ENV=p3env

# Setup zsh for oh-my-zsh
apt-get update
# Powerline font for Ubuntu and Debian
# other OS: https://github.com/powerline/fonts
apt-get install git zsh fonts-powerline

# Setup oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
$ZSH_CUSTOM=~/.oh-my-zsh/custom

# Install Spaceship for oh-my-zsh
echo "Installing spaceship theme for oh-my-zsh"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
vim ~/.zshrc
# ZSH_THEME="spaceship"
source ~/.zshrc

# VIM
# https://github.com/dracula/vim
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

# tmux
apt-get update
apt-get install tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
vim ~/.tmux.conf

# Create virtualenv for python3
pip install virtualenv
mkdir ~/.virtualenvs
virtualenv ~/.virtualenvs/$PYTHON_ENV --python=`which python3`
echo "alias $SHORTCUT='source ~/.virtualenvs/$PYTHON_ENV/bin/activate'"
# Install basic modules for python
pip install numpy pandas tqdm seaborn