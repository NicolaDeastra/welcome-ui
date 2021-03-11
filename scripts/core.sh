#!/bin/bash

FONTS_DIR=packages/IconFont/fonts
FONT_FILE="$FONTS_DIR/welcome-icon-font.woff"

if [[ -f "$FONT_FILE" ]]; then
  # We get the branch name from HEAD with netlify
  if [[ -n "$HEAD" ]]; then
    BRANCH=$HEAD
  else
    BRANCH=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
  fi
  ICON_FONT_HASH=$(sha1sum $FONT_FILE | awk '{ print $1 }')

  lerna run build --scope @welcome-ui/core -- --environment BRANCH:$BRANCH,ICON_FONT_HASH:$ICON_FONT_HASH
else
  echo "Font doesn't exist. Please run 'yarn webfont:build'"
  exit 1
fi
