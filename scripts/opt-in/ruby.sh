echo
echo "Installing Ruby tools and latest Ruby"
brew install rbenv
cp files/.irbrc ~/.irbrc
brew install readline
eval "$(rbenv init -)"

# Install Ruby 2.7.4
CFLAGS="-Wno-error=implicit-function-declaration" RUBY_CONFIGURE_OPTS='--with-readline-dir=/usr/local/opt/readline/' rbenv install 2.7.4
rbenv shell 2.7.4
gem update --system
gem install bundler
rbenv rehash

# Install Ruby 2.5.8
CFLAGS="-Wno-error=implicit-function-declaration" RUBY_CONFIGURE_OPTS='--with-readline-dir=/usr/local/opt/readline/' rbenv install 2.5.8
rbenv shell 2.5.8
gem update --system
gem install bundler
rbenv rehash

rbenv global 2.5.8

echo 'eval "$(rbenv init -)"' >> ~/.zshenv
echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshenv

# guard against pre-installed rubymine
brew install --cask rubymine --force

source ${MY_DIR}/scripts/common/download-jetbrains-ide-prefs.sh
pushd ~/workspace/jetbrains-ide-prefs/cli
./bin/ide_prefs install --ide=rubymine
popd
