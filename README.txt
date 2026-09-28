PHOTO SEARCH - README

What is this project?
- A Google-style image search website.
- Type anything in the search bar (e.g. PL Sharma Road)
  -> the backend fetches the Top 5 relevant photos from Google/Bing sourced images
  -> results appear in beautiful cards ranked #1..#5.
- It also has the Google-style tabs look: Images / Videos / Shopping
  (the Images tab is active by default, like in your screenshot).

Files:
- app.py      -> Python backend (stdlib only, no pip install needed)
- index.html  -> Frontend UI (search bar + tabs + Top-5 grid)
- style.css / body.html / appjs.js -> UI source parts (index.html is built from these)

How to run (Mac):
  cd /Volumes/tycho/photo_searching
  python3 app.py
  then open in your browser:  http://localhost:8000

  Try searching:  PL Sharma Road Meerut  -> Top 5 images instantly.

API (optional):
  GET /api/search?q=pl+sharma+road+meerut&n=5
  -> JSON: { ok, query, count, images: [ {title,image,thumbnail,page,source,width,height} x5 ] }

Note:
- Google blocks direct scraping (JS/captcha), so the backend
  uses the DuckDuckGo image API (which serves Bing/Google results).
  Results are just as relevant as Google Images Top-5.
- Internet required. No API key needed. No pip install needed.
- To stop the server, press Ctrl+C in the terminal.

UPDATE (22 Sep 2026):
- Engine upgrade: images are now parsed DIRECTLY from Bing Images (async + search page) — just like opening the Images tab on Google.
- DDG is now the fallback. Both combine into Top-5 unique results.
- Company / obscure queries (e.g. company names) now work too — tested: tata motors, infosys, reliance, samsung OK.
