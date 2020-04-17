### Pluralsight

It's currently free (April 2020) to register and account, otherwise you're limited to "10 days or 200 minutes of content on Pluralsight's technology learning platform."
https://www.pluralsight.com/offer/2020/free-april-month

It looks like PluralSight issue a 403 ban after 9-12 videos are downloaded, regardless of speed. They also use an IP ban after 2 banned accounts. The best way to download the videos for offline use is with the official app (which still causes bans after heavy downloading). The steps below are for Windows.

## Steps
1. Register an account on https://www.pluralsight.com
2. Make sure that you create a password
3. Download the official app: https://www.pluralsight.com/product/downloads
4. Sign in to the app. It may require an update.
5. Navigate to the course that you're interested in, and press the Download Course button
6. This will ask if you want to open the link with the PluralSight app. Select yes, and the files will start downloading
6.1 Note: You can download up to 40 courses at once (a max of 25 undownloaded videos can be queued up at a time). After this you'll have reached the limit, and will need to remove old courses before you can download new ones.
7. Download the following decryptor: https://github.com/ajdnik/decrypo/releases
8. Run the command with the following parameters (note: this was run in powershell, and the decryptor doesn't like spaces in the filename of the output directory):
.\decrypo.exe -output '.\Course\'
9. After a few minutes the courses will be decrypted, and can be viewable on all devices.

## Subtitles and Exercise Files
Note: The steps above don't download subtitles (which youtube-dl does) or Exercise Files (which only pluradl.py does). In order to add these as well, run the following:

### Subtitles:
Download subtitles using the following:
```sh
youtube-dl -v --cookies cookies.txt --user-agent "$useragent" --add-header Referer:"https://app.pluralsight.com/library/courses/" -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s" --sub-lang en --sub-format srt --skip-download --batch-file courselist.txt
```

Then rename the files to match the official PluralSight format (change the parent to match your setup):
```sh
from os import path, listdir, rename
from os.path import isfile, join
parent = "C:\\Users\\<username>\\Documents\\pluralsight"
directories_level_one = [f for f in listdir(parent) if not isfile(join(parent, f))]
for directory_one in directories_level_one:
    parent_one = path.join(parent, directory_one)
    directories_level_two = [g for g in listdir(parent_one) if not isfile(join(parent_one, g))]
    for directory_two in directories_level_two:
        parent_two = path.join(parent_one, directory_two)
        files_level_three = [h for h in listdir(parent_two) if isfile(join(parent_two, h))]
        counter = 1
        for file_three in files_level_three:
            new_file_three = file_three[file_three.find(' - ') + 3:]
            new_file_three = str(counter) + '-' + new_file_three.replace(' ', '-')
            print('Renaming ' + path.join(parent_two, file_three) + ", to " + path.join(parent_two, new_file_three))
            rename(path.join(parent_two, file_three), path.join(parent_two, new_file_three))
            counter += 1
        directory_two_index = directory_two[:directory_two.find(' - ')]
        new_directory_two = directory_two[directory_two.find(' - ') + 3:]
        new_directory_two = new_directory_two.replace(' ', '-')
        new_directory_two = directory_two_index + '-' + new_directory_two
        print('Renaming ' + path.join(parent_one, directory_two) + ", to " + path.join(parent_one, new_directory_two))
        rename(path.join(parent_one, directory_two), path.join(parent_one, new_directory_two))

```

Merge the folders, then run the following to embed the subtitles:
```sh
find * -type f -name *.srt -exec bash -c "f='{}'; ffmpeg -y -loglevel 'repeat+info' -i 'file:${f%.*.*}.mp4' -i 'file:$f' -map 0 -c copy -map '-0:s' -map '-0:d' '-c:s' mov_text -map '1:0' '-metadata:s:s:0' 'language=eng' 'file:"${f%.*.*}".temp.mp4' " \;
```

And once you're happy that the files have subtitles embedded, rename the files
```sh
find * -type f -name *.temp.mp4 -exec bash -c "f='{}'; mv $f ${f%.*.*}.mp4 " \;
```




The following command can be used to download courses from Pluralsight for offline viewing .mp4 format, along with the thumbnails from
the website, subtitles, and descriptions. It has severe limitations though, so it isn't recommended. 

Note: You'll need the following packages:
```sh
youtube-dl
ffmpeg
atomicparsley
```

### Command:
Cookies:
Use something like the following extension to log in and export the cookies for pluralsight.com
https://chrome.google.com/webstore/detail/cookiestxt/njabckikapfpffapmjgojcnbfjonfjfg?hl=en

And the following page to get your current user agent (optional):
https://www.whatismybrowser.com/detect/what-is-my-user-agent

```sh
course="https://app.pluralsight.com/library/courses/docker-containers-big-picture"
useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
youtube-dl -v --cookies cookies.txt --user-agent "$useragent" --add-header Referer:"https://app.pluralsight.com/library/courses/" -r 20K -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s" --sleep-interval 120 --max-sleep-interval 180 --all-subs --embed-subs --add-metadata --embed-thumbnail "$course" --playlist-start 1
```

### Generate a version of youtube-dl with extended wait times
If you're trying to resume a partial download, then it's possible to reach the cap when youtube-dl moves quickly from one already downloaded file to another. In order to avoid that, we can modify the following line to add an extra delay: https://github.com/ytdl-org/youtube-dl/blob/master/youtube_dl/extractor/pluralsight.py#L396 and rebuild the application.
``` sh
git clone https://github.com/ytdl-org/youtube-dl.git
cd youtube-dl
sed -i 's/random.randint(2, 5)/random.randint(60, 120)/g' youtube_dl/extractor/pluralsight.py
make youtube-dl
mv youtube-dl youtube-dl-ps
```
Then move this new file (youtube-dl-ps) to wherever you want it, and replace the regular command from youtube-dl to ./youtube-dl-ps

### Recommended courses:

#### Python (https://app.pluralsight.com/paths/skill/python):<br/>
Beginner<br/>
https://app.pluralsight.com/library/courses/python-big-picture<br/>
https://app.pluralsight.com/library/courses/getting-started-python-core<br/>

Intermediate<br/>
https://app.pluralsight.com/library/courses/python-beyond-basics<br/>
https://app.pluralsight.com/library/courses/python-best-practices-code-quality<br/>
https://app.pluralsight.com/library/courses/managing-python-packages-virtual-environments<br/>
https://app.pluralsight.com/library/courses/using-unit-testing-python<br/>

Advanced<br/>
https://app.pluralsight.com/library/courses/full-stack-web-development-python-web2py<br/>
https://app.pluralsight.com/library/courses/advanced-python<br/>


#### Managing Containers with Docker (https://app.pluralsight.com/paths/skill/managing-containers-with-docker):<br/>
Beginner<br/>
https://app.pluralsight.com/library/courses/docker-kubernetes-big-picture<br/>
https://app.pluralsight.com/library/courses/docker-getting-started<br/>
https://app.pluralsight.com/library/courses/docker-swarm-mode-getting-started<br/>
https://app.pluralsight.com/library/courses/securing-docker-platform<br/>
https://app.pluralsight.com/library/courses/docker-windows-getting-started<br/>

Intermediate<br/>
https://app.pluralsight.com/library/courses/docker-networking<br/>
https://app.pluralsight.com/library/courses/implementing-self-hosted-docker-registry<br/>
https://app.pluralsight.com/library/courses/securing-docker-container-workloads<br/>
https://app.pluralsight.com/library/courses/docker-images-managing<br/>
https://app.pluralsight.com/library/courses/managing-load-balancing-scale-docker-swarm-clusters<br/>
https://app.pluralsight.com/library/courses/docker-deep-dive-update<br/>

Advanced<br/>
https://app.pluralsight.com/library/courses/containerizing-software-application-docker<br/>
https://app.pluralsight.com/library/courses/monitoring-containerized-app-health-docker<br/>
https://app.pluralsight.com/library/courses/handling-data-stateful-applications-docker<br/>


#### Certified Kubernetes Administrator (https://app.pluralsight.com/paths/certificate/certified-kubernetes-administrator):<br/>
https://app.pluralsight.com/library/courses/kubernetes-installation-configuration-fundamentals<br/>
https://app.pluralsight.com/library/courses/managing-kubernetes-api-server-pods<br/>
https://app.pluralsight.com/library/courses/managing-kubernetes-controllers-deployments<br/>
https://app.pluralsight.com/library/courses/configuring-managing-kubernetes-storage-scheduling<br/>
Coming soon: Configuring and Managing Kubernetes Networking, Services and Ingress<br/>


#### CISSP® (Certified Information Systems Security Professional) (https://app.pluralsight.com/paths/certificate/cisspr-certified-information-systems-security-professional):<br/>
https://app.pluralsight.com/library/courses/isc2-certification-examination-preparing<br/>
https://app.pluralsight.com/library/courses/security-management<br/>
https://app.pluralsight.com/library/courses/information-classification<br/>
https://app.pluralsight.com/library/courses/security-personnel<br/>
https://app.pluralsight.com/library/courses/risk-assessment-management<br/>
https://app.pluralsight.com/library/courses/security-controls-frameworks<br/>
https://app.pluralsight.com/library/courses/investigations-incident-management<br/>
https://app.pluralsight.com/library/courses/business-continuity-management<br/>
https://app.pluralsight.com/library/courses/security-architecture<br/>
https://app.pluralsight.com/library/courses/security-engineering<br/>
https://app.pluralsight.com/library/courses/cryptography-application<br/>
https://app.pluralsight.com/library/courses/physical-security<br/>
https://app.pluralsight.com/library/courses/communications-network-security<br/>
https://app.pluralsight.com/library/courses/secure-network-design<br/>
https://app.pluralsight.com/library/courses/access-control-identity-management<br/>
https://app.pluralsight.com/library/courses/software-development-security<br/>
https://app.pluralsight.com/library/courses/security-operations<br/>
https://app.pluralsight.com/library/courses/security-control-assessment<br/>


#### Configuration Management using Puppet 4 (https://app.pluralsight.com/paths/skills/puppet-4):<br/>
Beginner<br/>
https://app.pluralsight.com/library/courses/puppet-system-administrators-fundamentals<br/>

Intermediate<br/>
https://app.pluralsight.com/library/courses/puppet-4-language-essentials<br/>
https://app.pluralsight.com/library/courses/puppet-4-working-modules-classes<br/>
https://app.pluralsight.com/library/courses/puppet-4-files-templates<br/>

Advanced<br/>
https://app.pluralsight.com/library/courses/puppet-4-hiera<br/>
https://app.pluralsight.com/library/courses/puppet-4-server-puppet-enterprise<br/>


#### Android Development with Kotlin — App Fundamentals (https://app.pluralsight.com/paths/skill/android-development-with-kotlin-fundamentals):<br/>
Getting Started<br/>
https://app.pluralsight.com/library/courses/android-apps-kotlin-build-first-app<br/>

Core Development Skills<br/>
https://app.pluralsight.com/library/courses/android-apps-kotlin-tools-testing<br/>
https://app.pluralsight.com/library/courses/android-kotlin-apps-resources-styles-themes<br/>
https://app.pluralsight.com/library/courses/android-apps-kotlin-recyclerview-navigation-drawer<br/>
https://app.pluralsight.com/library/courses/android-apps-kotlin-viewmodel-lifecycle<br/>


#### Google: Associate Android Developer (AAD) (https://app.pluralsight.com/paths/skill/google-android-associate-developer-aad):<br/>
Beginner<br/>
https://app.pluralsight.com/library/courses/android-application-basics-understanding<br/>
https://app.pluralsight.com/library/courses/android-tools-testing<br/>

Intermediate<br/>
https://app.pluralsight.com/library/courses/android-enhancing-application-experience<br/>
https://app.pluralsight.com/library/courses/android-managing-app-data-sqlite<br/>
https://app.pluralsight.com/library/courses/android-exposing-data-information-outside-app<br/>

Advanced<br/>
https://app.pluralsight.com/library/courses/android-leveraging-power-platform<br/>
https://app.pluralsight.com/library/courses/android-broadening-app-appeal-reach<br/>


#### Protocol deep dives:<br/>
https://app.pluralsight.com/library/courses/dns-deep-dive<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-arp<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-dhcp<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-eigrp<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-ftp-variants<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-icmp<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-igmp-mld<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-ipsec<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-nat<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-ospf<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-snmp<br/>
https://app.pluralsight.com/library/courses/protocol-deep-dive-tcp-udp<br/>
https://app.pluralsight.com/library/courses/ssh-telnet-protocol-deep-dive<br/>


#### Other:<br/>
https://app.pluralsight.com/library/courses/securing-docker-platform<br/>
https://app.pluralsight.com/library/courses/docker-containers-big-picture<br/>
https://app.pluralsight.com/library/courses/getting-started-puppet<br/>


#### Useful resources:<br/>

https://gist.github.com/ivanskodje/5bd8697a64e9879f397f7ef161cf0956
https://gist.github.com/jesperorb/c14aef85735c54f479896cfa6f16a1e5
https://github.com/ytdl-org/youtube-dl/issues/24008
https://github.com/rojter-tech/pluradl.py/issues/19
https://github.com/rojter-tech/pluradl.py/blob/master/courselist.txt
