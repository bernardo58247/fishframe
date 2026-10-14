for file in ~/.fishframe/plugins/*.plu
  test -f "$file"; or continue
  source "$file"
end

if test -f "$HOME/.fishframe/themes/$FISHFRAME_THEME.theme"
  source "$HOME/.fishframe/themes/$FISHFRAME_THEME.theme"
else
  echo "Fishframe: Theme not found: $FISHFRAME_THEME"
  echo "Fishframe: Falling back to the default theme..."
  source "$HOME/.fishframe/themes/default.theme"
end
