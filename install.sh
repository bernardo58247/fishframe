#!/bin/sh

set -e

if command -v git 2>/dev/null; then
  echo "Git is available! we can continue!"
else
  echo "Git not found! try installing git"
  exit 1
fi

git clone https://github.com/bernardo58247/fishframe && cd fishframe

cp -r .fishframe ~/.fishframe
mkdir -p "$HOME/.config/fish"

cat << EOF >> ~/.config/fish/config.fish
 if test -f ~/.fishframe/init.fish
   source ~/.fishframe/init.fish
 end
EOF

mkdir -p "$HOME/.local/bin"
cp ./fishframe "$HOME/.local/bin/fishframe"

if ! grep -Fq 'fish_add_path "$HOME/.local/bin"' "$HOME/.config/fish/config.fish"; then
    echo 'fish_add_path "$HOME/.local/bin"' >> "$HOME/.config/fish/config.fish"
fi