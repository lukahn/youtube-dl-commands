### Bluey
The following command can be used to download episodes of Bluey from ABC iView in .mp4 format, along with the thumbnails from
the website, subtitles, and episode descriptions. These episodes can only be downloaded for a time limited period
however (typically four weeks after initial airing, though there are some exceptions, and they do loop back around again), so check the official page to see what's available.

Note: You'll need the following packages:
```sh
youtube-dl
ffmpeg
atomicparsley
```

### Command:
```sh
episode="https://iview.abc.net.au/video/DO1811H001S00"
youtube-dl -v "$episode" --all-subs --embed-subs --add-metadata --embed-thumbnail
```

### Main page:
https://iview.abc.net.au/show/bluey

### Here's a list of links:
https://en.wikipedia.org/wiki/List_of_Bluey_(2018_TV_series)_episodes

### Season 1:
```sh
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q005S00,"S01E01 - The Magic Xylophone"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q029S00,"S01E02 - Hospital"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q019S00,"S01E03 - Keepy Uppy"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q013S00,"S01E04 - Daddy Robot"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q015S00,"S01E05 - Shadowlands"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q018S00,"S01E06 - The Weekend"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q023S00,"S01E07 - BBQ"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q017S00,"S01E08 - Fruitbat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q014S00,"S01E09 - Horsey Ride"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q003S00,"S01E10 - Hotel"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q012S00,"S01E11 - Bike"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q016S00,"S01E12 - Bob Bilby"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q022S00,"S01E13 - Spy Game"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q004S00,"S01E14 - Takeaway"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q024S00,"S01E15 - Butterflies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q001S00,"S01E16 - Yoga Ball"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q027S00,"S01E17 - Calypso"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q021S00,"S01E18 - The Doctor"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q006S00,"S01E19 - The Claw"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q026S00,"S01E20 - Markets"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q020S00,"S01E21 - Blue Mountains"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q008S00,"S01E22 - The Pool"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q025S00,"S01E23 - Shops"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q009S00,"S01E24 - Wagonride"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q011S00,"S01E25 - Taxi"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q010S00,"S01E26 - The Beach"

https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q049S00,"S01E27 - Pirates"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q040S00,"S01E28 - Grannies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q032S00,"S01E29 - The Creek"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q043S00,"S01E30 - Fairies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q037S00,"S01E31 - Work"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q034S00,"S01E32 - Bumpy And The Wise Old Wolfhound"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q031S00,"S01E33 - Trampoline"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q050S00,"S01E34 - The Dump"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q041S00,"S01E35 - Zoo"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q028S00,"S01E36 - Backpackers"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q046S00,"S01E37 - The Adventure"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q048S00,"S01E38 - Copycat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q047S00,"S01E39 - The Sleepover"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q035S00,"S01E40 - Early Baby"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q044S00,"S01E41 - Mums and Dads"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q039S00,"S01E42 - Hide and Seek"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q051S00,"S01E43 - Camping"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q030S00,"S01E44 - Mount Mumandad"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q038S00,"S01E45 - Kids"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q007S00,"S01E46 - Chickenrat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q033S00,"S01E47 - Neighbours"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q002S00,"S01E48 - Teasing"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q042S00,"S01E49 - Asparagus"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q036S00,"S01E50 - Shaun"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q045S00,"S01E51 - Daddy Putdown"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q052S00,"S01E52 - Verandah Santa"
```

### Season 2:
```sh
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q020S00,"S02E01 - Dance Mode"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q017S00,"S02E02 - Hammerbarn"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q016S00,"S02E03 - Featherwand"
,"S02E04 - Squash"
,"S02E05 - Hairdressers"
,"S02E06 - Stumpfest"
,"S02E07 - Favourite Thing"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q015S00,"S02E08 - Daddy Dropoff"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q018S00,"S02E09 - Bingo"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q007S00,"S02E10 - Rug Island"
,"S02E11 - Charades"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q004S00,"S02E12 - Sticky Gecko"
,"S02E13 - Dad Baby"
,"S02E14 - Mum School"
,"S02E15 - Trains"
,"S02E?? - Army"
```