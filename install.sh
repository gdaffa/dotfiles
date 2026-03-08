main_url=https://raw.githubusercontent.com/gdaffa/dotfiles/refs/heads/main

if !(command -v curl &> /dev/null); then
   echo Installing curl...
   sudo apt install curl
fi

mkdir -p ~/.config

curl -sS https://starship.rs/install.sh | sh
curl -fsSo ~/.config/starship.toml "$main_url/terminal/starship.toml"