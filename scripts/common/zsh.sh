set +e

brew install {bundler,gem,rails,rake,ruby}-completion


echo "autoload -Uz compinit && compinit" >> ~/.zshenv
echo "autoload -U promptinit; promptinit" >> ~/.zshenv

set -e
