#!/bin/sh

if command -v git 2>/dev/null
  echo "Git is available! we can continue!"
else
  echo "Git not found! try installing git"
  exit 1
end