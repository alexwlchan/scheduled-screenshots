#!/usr/bin/env bash

set -o errexit
set -o nounset

mkdir -p screenshots

today=$(date +"%Y-%m-%d")

npx playwright screenshot \
  --full-page \
  --wait-for-timeout 2000 \
  https://alexwlchan.net \
  "screenshots/alexwlchan.net.$today.png"
git add "screenshots/alexwlchan.net.$today.png"

git commit -m "Add screenshots for $today"
git push origin main
