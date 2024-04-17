#!/usr/bin/env bash

set -o errexit
set -o nounset

mkdir -p screenshots

today=$(date +"%Y-%m-%d")
screenshot_path="screenshots/alexwlchan.net.$today.png"

if [[ ! -f "$screenshot_path" ]]
then
  npx playwright screenshot \
    --full-page \
    --wait-for-timeout 10000 \
    https://alexwlchan.net \
    "$screenshot_path"
  git add "$screenshot_path"

  git commit -m "Add screenshots for $today"
  git push origin main
fi
