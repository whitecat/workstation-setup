set +e

echo "Installing global NVM Packages"
brew install nvm
nvm install 14.17
nvm alias default 14

set -e
