# scheduled-screenshots

This is a script that takes a screenshot of the homepage of my website once a week.

![A graphic showing multiple screenshots arranged into a stack, as if they were in a timeline – older screenshots towards the back, newer screenshots towards the front](scheduled-screenshots.png)

## Why?

I want to keep a record of the "look and feel" of my website.

Having [lots of screenshots](https://alexwlchan.net/2022/screenshots/) is one way to do that, but I'm not always good about remembering to take them!
Creating screenshots on a regular schedule ensures I'll have a reasonable record of what my website looked like.

## How?

I have a GitHub Action that wakes up once a day and [takes a screenshot with Playwright](https://www.scrapingbee.com/webscraping-questions/playwright/how-to-take-screenshot-with-playwright/), which is a tool for automating browsers.
It saves that screenshot in this repo.

I filled in the historical archive with screenshots from the Wayback Machine.
(First I [got a list of captures](https://alexwlchan.net/til/2024/get-a-list-of-captures-from-the-wayback-machine/), then I [took a screenshot of each capture](https://alexwlchan.net/til/2024/take-a-wayback-machine-screenshot/).)

## Can I do this for my own site?

If you want to set up scheduled screenshots for one of your websites, you can copy my setup:

1. Create a new GitHub repository
2. Create a new file `.github/workflows/take_screenshots.yml` with the contents of [the same file in this repo](https://github.com/alexwlchan/scheduled-screenshots/blob/main/.github/workflows/take_screenshots.yml)
3. Give [write access](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#configuring-the-default-github_token-permissions) to the `GITHUB_TOKEN` used by GitHub Actions, so it can push to your repo
4. Change the list of URLs/filename prefixes in the `matrix` block for the websites you want to screenshot
