#!/usr/bin/env bash

set -o errexit
set -o nounset

mkdir -p screenshots

DOMAIN="alexwlchan.net"
SCREENSHOT_NAME="alexwlchan.net"

today=$(date +"%Y-%m-%d")
screenshot_path="screenshots/$SCREENSHOT_NAME.$today.png"

if [[ ! -f "$screenshot_path" ]]
then
  npm install playwright-chromium

  npx playwright screenshot \
    --full-page \
    --wait-for-timeout 10000 \
    "$DOMAIN_NAME" "$screenshot_path"
  git add "$screenshot_path"

  git commit -m "Add screenshots for $today"
  git push origin main
fi
