setup +e
echo "installing puma"

brew install puma/puma/puma-dev
sudo puma-dev -setup
# If you would like the applications to shut down sooner after not being used to save
# system resources, you may tweak the timeout value.
puma-dev -install -d test -timeout 8h

setup -e
