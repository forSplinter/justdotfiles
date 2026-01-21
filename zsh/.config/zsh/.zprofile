#loging variables
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export TERM="xterm-256color"

#XGD dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

path=(
   /opt/homebrew/opt/node@22/bin
   /usr/local/opt/python@3.11/libexec/bin
   /opt/homebrew/opt/openjdk@17/bin
   $path
)

#postgres libpq (macopt)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

#GCP lib binary for macos
export PATH=/opt/homebrew/share/google-cloud-sdk/bin:$PATH"

export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export PYENV_ROOT="$HOME/.pyenv"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/zsh/starship.toml"


# Created by `pipx` on 2026-01-03 16:20:24
export PATH="$PATH:/Users/forsplinter/.local/bin"
