import datetime
import os
import subprocess
import sys

import hyperlink

url = sys.argv[1]

u = hyperlink.DecodedURL.from_text(url)

d = datetime.datetime.strptime(u.path[1], '%Y%m%d%H%M%S').strftime("%Y-%m-%d")

path = os.path.join("screenshots", "alexwlchan.net.%s.png" % d)

if not os.path.exists(path):
    from playwright.sync_api import sync_playwright

    with sync_playwright() as p:
        browser = p.chromium.launch(headless = False)

        page = browser.new_page()
        page.goto(url)

        page.wait_for_load_state("networkidle")

        # Save the screenshot
        page.screenshot(path=path, full_page=True, timeout=30000.0, style="""
            #wm-ipp-base { display: none !important; }
            """)
