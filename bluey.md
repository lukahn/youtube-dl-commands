### Bluey
The following command can be used to download episodes of Bluey from ABC iView in .mp4 format, along with the thumbnails from
the website, subtitles, and episode descriptions. These episodes can only be downloaded for a time limited period
however (typically four weeks after initial airing, though there are some exceptions, and they do loop back around again), so check the official page to see what's available.

Note: these were recently re-uploaded in 720p (originally it was 576p), but the video is blurrier, and the colours aren't as crisp.

Note: Episodes "Flat Pack" and "Teasing" were re-worked, replacing instances of "ooga booga" with the more monkey-like "ooh ooh ooh" sounds.
https://www.abc.net.au/news/2020-08-20/why-abc-removed-two-bluey-episodes-over-racial-connotations/12577024

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
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q005S00,"Bluey (2018) - S01E01 - The Magic Xylophone"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q029S00,"Bluey (2018) - S01E02 - Hospital"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q019S00,"Bluey (2018) - S01E03 - Keepy Uppy"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q013S00,"Bluey (2018) - S01E04 - Daddy Robot"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q015S00,"Bluey (2018) - S01E05 - Shadowlands"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q018S00,"Bluey (2018) - S01E06 - The Weekend"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q023S00,"Bluey (2018) - S01E07 - BBQ"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q017S00,"Bluey (2018) - S01E08 - Fruitbat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q014S00,"Bluey (2018) - S01E09 - Horsey Ride"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q003S00,"Bluey (2018) - S01E10 - Hotel"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q012S00,"Bluey (2018) - S01E11 - Bike"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q016S00,"Bluey (2018) - S01E12 - Bob Bilby"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q022S00,"Bluey (2018) - S01E13 - Spy Game"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q004S00,"Bluey (2018) - S01E14 - Takeaway"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q024S00,"Bluey (2018) - S01E15 - Butterflies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q001S00,"Bluey (2018) - S01E16 - Yoga Ball"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q027S00,"Bluey (2018) - S01E17 - Calypso"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q021S00,"Bluey (2018) - S01E18 - The Doctor"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q006S00,"Bluey (2018) - S01E19 - The Claw"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q026S00,"Bluey (2018) - S01E20 - Markets"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q020S00,"Bluey (2018) - S01E21 - Blue Mountains"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q008S00,"Bluey (2018) - S01E22 - The Pool"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q025S00,"Bluey (2018) - S01E23 - Shops"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q009S00,"Bluey (2018) - S01E24 - Wagonride"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q011S00,"Bluey (2018) - S01E25 - Taxi"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q010S00,"Bluey (2018) - S01E26 - The Beach"

https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q049S00,"Bluey (2018) - S01E27 - Pirates"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q040S00,"Bluey (2018) - S01E28 - Grannies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q032S00,"Bluey (2018) - S01E29 - The Creek"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q043S00,"Bluey (2018) - S01E30 - Fairies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q037S00,"Bluey (2018) - S01E31 - Work"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q034S00,"Bluey (2018) - S01E32 - Bumpy And The Wise Old Wolfhound"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q031S00,"Bluey (2018) - S01E33 - Trampoline"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q050S00,"Bluey (2018) - S01E34 - The Dump"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q041S00,"Bluey (2018) - S01E35 - Zoo"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q028S00,"Bluey (2018) - S01E36 - Backpackers"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q046S00,"Bluey (2018) - S01E37 - The Adventure"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q048S00,"Bluey (2018) - S01E38 - Copycat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q047S00,"Bluey (2018) - S01E39 - The Sleepover"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q035S00,"Bluey (2018) - S01E40 - Early Baby"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q044S00,"Bluey (2018) - S01E41 - Mums and Dads"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q039S00,"Bluey (2018) - S01E42 - Hide and Seek"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q051S00,"Bluey (2018) - S01E43 - Camping"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q030S00,"Bluey (2018) - S01E44 - Mount Mumandad"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q038S00,"Bluey (2018) - S01E45 - Kids"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q007S00,"Bluey (2018) - S01E46 - Chickenrat"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q033S00,"Bluey (2018) - S01E47 - Neighbours"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q002S00,"Bluey (2018) - S01E48 - Teasing"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q042S00,"Bluey (2018) - S01E49 - Asparagus"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q036S00,"Bluey (2018) - S01E50 - Shaun"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q045S00,"Bluey (2018) - S01E51 - Daddy Putdown"
https://iview.abc.net.au/show/bluey/series/0/video/CH1702Q052S00,"Bluey (2018) - S01E52 - Verandah Santa"
```

### Season 2:
```sh
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q020S00,"Bluey (2018) - S02E01 - Dance Mode"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q017S00,"Bluey (2018) - S02E02 - Hammerbarn"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q016S00,"Bluey (2018) - S02E03 - Featherwand"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q005S00,"Bluey (2018) - S02E04 - Squash"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q001S00,"Bluey (2018) - S02E05 - Hairdressers"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q008S00,"Bluey (2018) - S02E06 - Stumpfest"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q003S00,"Bluey (2018) - S02E07 - Favourite Thing"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q015S00,"Bluey (2018) - S02E08 - Daddy Dropoff"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q018S00,"Bluey (2018) - S02E09 - Bingo"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q007S00,"Bluey (2018) - S02E10 - Rug Island"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q002S00,"Bluey (2018) - S02E11 - Charades"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q004S00,"Bluey (2018) - S02E12 - Sticky Gecko"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q019S00,"Bluey (2018) - S02E13 - Dad Baby"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q006S00,"Bluey (2018) - S02E14 - Mum School"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q009S00,"Bluey (2018) - S02E15 - Trains"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q012S00,"Bluey (2018) - S02E16 - Army"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q010S00,"Bluey (2018) - S02E17 - Fancy Restaurant"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q014S00,"Bluey (2018) - S02E18 - Piggyback"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q013S00,"Bluey (2018) - S02E19 - The Show"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q011S00,"Bluey (2018) - S02E20 - Tickle Crabs"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q023S00,"Bluey (2018) - S02E21 - Escape"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q024S00,"Bluey (2018) - S02E22 - Bus"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q022S00,"Bluey (2018) - S02E23 - Queens"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q021S00,"Bluey (2018) - S02E24 - Flat Pack"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q025S00,"Bluey (2018) - S02E25 - Helicopter"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q026S00,"Bluey (2018) - S02E26 - Sleepytime"

https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q042S00,"Bluey (2018) - S02E27 - Grandad"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q029S00,"Bluey (2018) - S02E28 - Seesaw"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q046S00,"Bluey (2018) - S02E29 - Movies"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q038S00,"Bluey (2018) - S02E30 - Library"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q033S00,"Bluey (2018) - S02E31 - Barky Boats"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q036S00,"Bluey (2018) - S02E32 - Burger Shop"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q027S00,"Bluey (2018) - S02E33 - Circus"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q039S00,"Bluey (2018) - S02E34 - Swim School"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q052S00,"Bluey (2018) - S02E35 - Café"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q032S00,"Bluey (2018) - S02E36 - Postman and Ground's Lava"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q049S00,"Bluey (2018) - S02E37 - The Quiet Game"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q031S00,"Bluey (2018) - S02E38 - Mr Monkeyjocks"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q048S00,"Bluey (2018) - S02E39 - Double Babysitter"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q043S00,"Bluey (2018) - S02E40 - Bad Mood"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q044S00,"Bluey (2018) - S02E41 - Octopus"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q034S00,"Bluey (2018) - S02E42 - Bin Night"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q045S00,"Bluey (2018) - S02E43 - Muffin Cone"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q030S00,"Bluey (2018) - S02E44 - Duck Cake"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q028S00,"Bluey (2018) - S02E45 - Handstand"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q050S00,"Bluey (2018) - S02E46 - Road Trip"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q040S00,"Bluey (2018) - S02E47 - Ice Cream"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q041S00,"Bluey (2018) - S02E48 - Dunny"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q035S00,"Bluey (2018) - S02E49 - Typewriter"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q037S00,"Bluey (2018) - S02E50 - Baby Race"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q051S00,"Bluey (2018) - S02E51 - Christmas Swim"
https://iview.abc.net.au/show/bluey/series/0/video/CH1903Q047S00,"Bluey (2018) - S02E52 - Easter"
```

### Season 3:
```sh
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q003S00,"Bluey (2018) - S03E01 - Perfect"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q001S00,"Bluey (2018) - S03E02 - Bedroom"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q007S00,"Bluey (2018) - S03E03 - Obstacle Course"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q023S00,"Bluey (2018) - S03E04 - Promises"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q011S00,"Bluey (2018) - S03E05 - Omelette"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q005S00,"Bluey (2018) - S03E06 - Born Yesterday"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q024S00,"Bluey (2018) - S03E07 - Mini Bluey"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q002S00,"Bluey (2018) - S03E08 - Unicorse"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q006S00,"Bluey (2018) - S03E09 - Curry Quest"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q022S00,"Bluey (2018) - S03E10 - Magic"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q004S00,"Bluey (2018) - S03E11 - Chest"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q019S00,"Bluey (2018) - S03E12 - Sheep Dog"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q008S00,"Bluey (2018) - S03E13 - Housework"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q009S00,"Bluey (2018) - S03E14 - Pass the Parcel"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q021S00,"Bluey (2018) - S03E15 - Explorers"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q013S00,"Bluey (2018) - S03E16 - Phones"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q010S00,"Bluey (2018) - S03E17 - Pavlova"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q026S00,"Bluey (2018) - S03E18 - Rain"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q025S00,"Bluey (2018) - S03E19 - Pizza Girls"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q017S00,"Bluey (2018) - S03E20 - Driving"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q020S00,"Bluey (2018) - S03E21 - Tina"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q018S00,"Bluey (2018) - S03E22 - Whale Watching"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q014S00,"Bluey (2018) - S03E23 - Family Meeting"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q012S00,"Bluey (2018) - S03E24 - Faceytalk"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q016S00,"Bluey (2018) - S03E25 - Ragdoll"
https://iview.abc.net.au/show/bluey/series/0/video/CH2003Q015S00,"Bluey (2018) - S03E26 - Fairytale"

```
