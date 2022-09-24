#!/usr/bin/env bash

# # # # # # # # # # # # # # #
#
# 1. Sign-in to the App Store
# 2. Run the script
# 3. Install Dropbox
# 4. https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
# 5. https://github.com/romkatv/zsh4humans
# 6. Install xcall from Github → https://github.com/martinfinke/xcall
# 7. Update hostname: vfd-mini/iphone/ipad-2201
# 8. Run `mas install 497799835  # Xcode (11.1)`
#
#
# # # # # # # # # # 


# Checking for Homebrew
if test ! $(which brew); then
    printf "\n\nINSTALLING HOMEBREW\n\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	/bin/bash -c "$(echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jimschutz/.zprofile)"
	/bin/bash -c "$(eval '$(/opt/homebrew/bin/brew shellenv)')"
else
    printf "\n\nHomebrew Already Installed\n\n"
fi

# Updating Homebrew
printf "\n\nUpdating Homebrew\n\n"
brew update
brew tap homebrew/cask-fonts

# Homebrew Packages
PACKAGES=(
    git
    node
    npm
    mas
    zsh
    trash
    switchaudio-osx
    starship
)

# Install Homebrew Apps
printf "\n\nInstalling Homebrew Packages\n\n"
brew install ${PACKAGES[@]}

# Cleanup Homebrew
printf "\n\nCleanup Homebrew\n\n"
brew cleanup

# Cask Packages
CASKS=(
    discord
    1password
    alfred
    rocket
    visual-studio-code
    cleanshot
    appcleaner
    iterm2
    obsidian
    raindropio
    spotify
    karabiner-elements
    lunar
    itsycal
)

# Install Cask Packages
printf "\n\nInstalling Cask Packages\n\n"
brew install ${CASKS[@]}

# Mac App Store apps install
printf "\n\nInstalling Mas Apps\n\n"
mas install 1289583905 # Pixelmator Pro (1.5)
mas install 453114608  # JSON Helper (1.09)
mas install 937984704  # Amphetamine (4.2)
mas install 1289197285 # MindNode (6.0.6)
mas install 1276248849 # Diagrams
mas install 1444383602 # GoodNotes 5
mas install 419330170  # Moom
mas install 1529448980 # Reeder 5 (5.0.8)
mas install 904280696  # Things

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create Directories
printf "\n\nCreate Directories\n\n"
mkdir ~/Development

# Done
printf "\n\nDone\n\n"

# # # # # # # # #
#     Other
#
# - Logi Options
# - Logi Tune
# # # # # # # # #
