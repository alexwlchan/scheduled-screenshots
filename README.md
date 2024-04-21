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
