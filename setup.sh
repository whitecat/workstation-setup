#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options
#
# Environment variables:
#   - SKIP_ANALYTICS:  Set this to 1 to not send usage data to our Google Analytics account
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh

# Install everything else
source ${MY_DIR}/scripts/common/oh-my-zsh.sh
source ${MY_DIR}/scripts/common/editors.sh
source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/git-aliases.sh
source ${MY_DIR}/scripts/common/applications-common.sh
source ${MY_DIR}/scripts/common/developer-utilities.sh
source ${MY_DIR}/scripts/common/unix.sh
source ${MY_DIR}/scripts/common/configuration-osx.sh
source ${MY_DIR}/scripts/opt-in/docker.sh
source ${MY_DIR}/scripts/opt-in/ruby.sh
source ${MY_DIR}/scripts/opt-in/nvm.sh
source ${MY_DIR}/scripts/opt-in/node.sh
source ${MY_DIR}/scripts/opt-in/puma.sh
