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

cat << EOF >> ~/.config/fish/config.fish
 if test -f ~/.fishframe/init.fish
   source ~/.fishframe/init.fish
 end
EOF

mkdir -p ~/.local/bin

cp ./fishframe ~/.local/bin

fish_add_path "$HOME/.local/bin"

echo 'fish_add_path "$HOME/.local/bin"' > ~/.config/fish/config.fish