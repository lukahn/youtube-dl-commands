### Pluralsight
The following command can be used to download courses from PluralSight for offline viewing .mp4 format, along with the thumbnails from
the website, subtitles, and descriptions.

It's currently free (April 2020) to regester and account, otherwise you're limited to "10 days or 200 minutes of content on Pluralsight's technology learning platform."
https://www.pluralsight.com/offer/2020/free-april-month

Note: You'll need the following packages:
```sh
youtube-dl
ffmpeg
atomicparsley
```

### Command:
Cookies:
Use something like the following extension to log in and export the cookies for pluralsight.com)
https://chrome.google.com/webstore/detail/cookiestxt/njabckikapfpffapmjgojcnbfjonfjfg?hl=en
```sh
course="https://app.pluralsight.com/library/courses/docker-containers-big-picture"
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
youtube-dl -v --cookies cookies.txt --user-agent "$useragent" -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s" --min-sleep-interval 35 --max-sleep-interval 120 --all-subs --embed-subs --add-metadata --embed-thumbnail "$course" --playlist-start 1
```

Username/Password:
```sh
course="https://app.pluralsight.com/library/courses/docker-containers-big-picture"
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
youtube-dl -v --username "username" --password "password" --user-agent "$useragent" -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s" --min-sleep-interval 35 --max-sleep-interval 120 --all-subs --embed-subs --add-metadata --embed-thumbnail "$course" --playlist-start 1
```

### Recommended courses:
https://app.pluralsight.com/library/courses/docker-containers-big-picture

https://app.pluralsight.com/library/courses/python-big-picture
