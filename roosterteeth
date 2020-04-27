### Rooster Teeth
The following command can be used to download episodes of Red vs Blue from Rooster Teeth in .mp4 format, along with the thumbnails from
the website, subtitles, and episode descriptions. These episodes can only be downloaded for a time limited period
however (typically four weeks after initial airing, though there are some exceptions, and they do loop back around again), so check the official page to see what's available.

Note: The regular youtube-dl should work now, but here's the workaround using ffmpeg from mid-2019.

Note: You'll need the following packages:
```sh
ffmpeg
python
requests
```

### Command:
```sh
#Based on comments from: https://github.com/ytdl-org/youtube-dl/issues/16094
#Notes - season 1 - 5 have incremental episodes, after that the links have words

import sys
from http.cookiejar import Cookie, MozillaCookieJar
import requests
import json
from lxml import html
from requests_html import HTMLSession
import subprocess

def load_cookies_from_mozilla(filename):
    ns_cookiejar = MozillaCookieJar()
    ns_cookiejar.load(filename, ignore_discard=True, ignore_expires=True)
    return ns_cookiejar

cookies = load_cookies_from_mozilla("cookies.txt")
print (len(cookies))

for i in range(1,20):
    season = i
    url="https://roosterteeth.com/series/red-vs-blue?season="+str(season)
    session = HTMLSession()
    r = session.get(url)
    r.html.render()  # this call executes the js in the page, and takes a moment

    htmlArray = r._html.html.split("<a class=\"episode-title\"")
    for entry in htmlArray:
        entry = entry.split("</a")[0]
        if ("S"+str(season) in entry) and ("bonus" not in entry) and ("/watch" in entry):
            link = entry.split("\"")[1].replace("/watch/","")
            title = entry.split(">")[1].replace(":","").replace("\"","'").replace("?","").replace("<","").replace(">","").replace("|","").replace("*","").replace("/","").replace("\\","")
            seasonFormat = title.split("E")[0]
            if len(seasonFormat) == 2:
                seasonFormat = "S0" + seasonFormat[1]
            episodeFormat = "E" + title.split("E")[1].split(" ")[0]
            if len(episodeFormat) == 2:
                episodeFormat = "E0" + episodeFormat[1]
            title = title[title.index(" "):]
            print(link + ": " + seasonFormat + episodeFormat + title)
            dlURL = "https://svod-be.roosterteeth.com/api/v1/episodes/" + link + "/videos"
            r2 = requests.get(dlURL, cookies=cookies)
            j = json.loads(r2.text)
            playlist = j["data"][0]["attributes"]["url"]
            print(playlist)
            subprocess.run(["ffmpeg", "-protocol_whitelist", "file,http,https,tcp,tls,crypto", "-i", playlist, "-c", "copy", "videos/" + seasonFormat + episodeFormat + title + ".mp4"])
```

### Single downloads:<br>
```sh
import sys
from http.cookiejar import Cookie, MozillaCookieJar
import requests
import json
from lxml import html
from requests_html import HTMLSession
import subprocess

def load_cookies_from_mozilla(filename):
    ns_cookiejar = MozillaCookieJar()
    ns_cookiejar.load(filename, ignore_discard=True, ignore_expires=True)
    return ns_cookiejar

cookies = load_cookies_from_mozilla("cookies.txt")
print (len(cookies))

dlURL="https://svod-be.roosterteeth.com/api/v1/episodes/rt-docs-why-we-re-here-15-years-of-rooster-teeth-why-we-re-here-15-years-of-rooster-teeth/videos"

r2 = requests.get(dlURL, cookies=cookies)
j = json.loads(r2.text)
playlist = j["data"][0]["attributes"]["url"]
print(playlist)
subprocess.run(["ffmpeg", "-protocol_whitelist", "file,http,https,tcp,tls,crypto", "-i", playlist, "-c", "copy", "output.mp4"])
```

### Interesting links:<br>
https://svod-be.roosterteeth.com/api/v1/episodes/rt-docs-why-we-re-here-15-years-of-rooster-teeth-why-we-re-here-15-years-of-rooster-teeth/videos
