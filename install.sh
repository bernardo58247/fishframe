#!/bin/sh

if command -v git 2>/dev/null; then
  echo "Git is available! we can continue!"
else
  echo "Git not found! try installing git"
  exit 1
fi

git clone 