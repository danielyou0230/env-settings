
# Setup zsh for oh-my-zsh
apt-get update
# Powerline font for Ubuntu and Debian
# other OS: https://github.com/powerline/fonts
apt-get install git zsh fonts-powerline tmux htop

# Setup oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

