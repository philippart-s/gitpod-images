FROM gitpod/workspace-full

# Wakatime config
ARG WAKATIME_API_KEY
ENV ZSH=/home/gitpod/.oh-my-zsh

# Set configuration for wakatime
RUN printf "\n[settings]\napi_key = $WAKATIME_API_KEY\n" > ~/.wakatime.cfg \
    # Install Jekyll
    && bash -lc "gem install bundler jekyll" \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    # Powerlevel10k theme
    && sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k --depth=1

# ADD zsh & oh my zsh config file
ADD .zshrc .
# ADD Powerlevel10k theme
ADD .p10k.zsh .