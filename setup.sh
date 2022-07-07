if [ "$(uname)" == "Darwin" ]; then
  brew install neovim
  brew install byobu
else 
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y neovim byobu zsh
fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sLf https://spacevim.org/install.sh | bash
pip3 install --user pylint yapf autoflake flake8 pyflakes
