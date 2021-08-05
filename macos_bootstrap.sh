#!/usr/bin/env bash

# Checking for Homebrew
if test ! $(which brew); then
    printf "\n\nINSTALLING HOMEBREW\n\n"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap homebrew/cask-fonts
else
    printf "\n\nHomebrew Already Installed\n\n"
fi

# Updating Homebrew
printf "\n\nUpdating Homebrew\n\n"
brew update

# Homebrew Packages
PACKAGES=(
    git
    node
    npm
    telnet
    ical-buddy
    wget
    openssl
    graphviz
    mas
    xz
    zsh
    trash
)

# Install Homebrew Apps
printf "\n\nInstalling Homebrew Packages\n\n"
brew install ${PACKAGES[@]}

# Cleanup Homebrew
printf "\n\nCleanup Homebrew\n\n"
brew cleanup

# Cask Packages
CASKS=(
    1password
    postman
    alfred
    muzzle
    rocket
    visual-studio-code
    dropbox
    google-chrome
    microsoft-edge
    firefox
    tripmode
    cleanshot
    appcleaner
    transmit
    iterm2
    parallels
    camunda-modeler
    keepassxc
    obsidian
    raindropio
    royal-tsx
    spotify
    karabiner-elements
    font-ia-writer-duo
    font-ia-writer-duospace
    font-ia-writer-mono
    font-ia-writer-quattro
    font-victor-mono
)

# Install Cask Packages
printf "\n\nInstalling Cask Packages\n\n"
brew install --cask ${CASKS[@]}

# Mac App Store apps install
printf "\n\nInstalling Mas Apps\n\n"
mas install 1289583905 # Pixelmator Pro (1.5)
mas install 453114608  # JSON Helper (1.09)
mas install 937984704  # Amphetamine (4.2)
mas install 1289197285 # MindNode (6.0.6)
mas install 975937182  # Fantastical
mas install 1276248849 # Diagrams
mas install 1444383602 # GoodNotes 5
mas install 419330170  # Moom
mas install 497799835  # Xcode (11.1)
#mas install 803453959  # Slack
#mas install 1278508951 # Trello

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create Directories
printf "\n\nCreate Directories\n\n"
mkdir ~/Development

# Done
printf "\n\nDone\n\n"

# # # # # # # #
# install xcall from Github → https://github.com/martinfinke/xcall
# # # # # # # #

# # # # # # # # #
#     Other
#
# - Logi Options
# - Logi Tune
# # # # # # # # #
