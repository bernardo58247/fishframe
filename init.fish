for file in ~/.fishframe/plugins/*.plu
  test -f "$file"; or continue
  source "$file"
end

for theme in ~/.fishframe/themes/*.theme
  test -f "$theme"; or continue
  source "$theme"
end
