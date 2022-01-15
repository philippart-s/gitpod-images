FROM gitpod/workspace-base

    # Install Oh My Zsh !
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    # Spaceship theme
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git $ZSH/themes/spaceship-prompt --depth=1 \
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" $ZSH/themes/spaceship.zsh-theme \
    # Powerlevel10k theme
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k \
    # Autosuggestion plugin
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions 
    # Install Jekyll
    #gem install bundler jekyll

# ADD zsh & oh my zsh config file
ADD .zshrc .
# 