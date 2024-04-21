#!/usr/bin/env bash
# Take a screenshot of a website, save it to the `screenshots` folder,
# and push it to GitHub.
#
# This script needs two environment variables:
#
#   - URL = the URL of the website that you want to screenshot
#   - SCREENSHOT_NAME = the prefix of the names in the screenshots foler
#

set -o errexit
set -o nounset

mkdir -p screenshots

today=$(date +"%Y-%m-%d")
screenshot_path="screenshots/$SCREENSHOT_NAME.$today.png"

if [[ ! -f "$screenshot_path" ]]
then
  npx playwright screenshot \
    --full-page \
    --wait-for-timeout 10000 \
    "$URL" "$screenshot_path"
  git add "$screenshot_path"

  git commit -m "Add screenshots for $today"
  git push origin main
fi
