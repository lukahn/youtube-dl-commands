### BBC iPlayer
The following command can be used to download episodes from BBC iPlayer in .mp4 format, along with the thumbnails from
the website, subtitles, and episode descriptions. These episodes can only be downloaded for a time limited period
however, and require access to a UK IP address (some VPNs don't work).
Subtitles are in ttml format by default, but ffmpeg doesn't understand this, so we need the --convert-subtitles srt flag.

Note: You'll need the following packages:
```sh
youtube-dl
ffmpeg
atomicparsley
```

### Command:
```sh
episode="https://www.bbc.co.uk/iplayer/episode/m000kxwq/once-upon-a-time-in-iraq-series-1-1-war"
youtube-dl -v -c --all-subs --embed-subs --convert-subtitles srt --add-metadata --embed-thumbnail "$episode"
```

Or in Powershell (continuing if there's a bad network connection):
```sh
$episode="https://www.bbc.co.uk/iplayer/episode/m000kxwq/once-upon-a-time-in-iraq-series-1-1-war"
Do { .\youtube-dl.exe -v -c --all-subs --embed-subs --convert-subtitles srt --add-metadata --embed-thumbnail "$episode" } until ($?)
```
