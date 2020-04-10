### Udemy
The following command can be used to download courses from Udemy for offline viewing .mp4 format, along with the thumbnails from
the website, subtitles, and descriptions.

Note: You'll need the following packages:
```sh
youtube-dl
ffmpeg
atomicparsley
```

### Command:
Cookies:
Use something like the following extension to log in and export the cookies for udemy.com
https://chrome.google.com/webstore/detail/cookiestxt/njabckikapfpffapmjgojcnbfjonfjfg?hl=en

And the following page to get your current user agent (optional):
https://www.whatismybrowser.com/detect/what-is-my-user-agent

```sh
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
course=https://www.udemy.com/aws-certified-solutions-architect-associate-exam
youtube-dl -v --cookies cookies.txt --user-agent "$useragent" -o '%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s' --all-subs --embed-subs --write-auto-sub --add-metadata --embed-thumbnail "$course"
```

### Recommended courses:

#### AWS:<br/>
https://www.udemy.com/aws-certified-solutions-architect-associate-exam<br/>

#### VR:<br/>
https://www.udemy.com/course/build-30-mini-virtual-reality-games-in-unity-3d-from-scratch<br/>
