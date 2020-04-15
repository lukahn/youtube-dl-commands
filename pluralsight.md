### Pluralsight
The following command can be used to download courses from Pluralsight for offline viewing .mp4 format, along with the thumbnails from
the website, subtitles, and descriptions.

It's currently free (April 2020) to register and account, otherwise you're limited to "10 days or 200 minutes of content on Pluralsight's technology learning platform."
https://www.pluralsight.com/offer/2020/free-april-month

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
https://app.pluralsight.com/library/courses/puppet-4-language-essentials
https://app.pluralsight.com/library/courses/puppet-4-working-modules-classes
https://app.pluralsight.com/library/courses/puppet-4-files-templates

Advanced<br/>
https://app.pluralsight.com/library/courses/puppet-4-hiera
https://app.pluralsight.com/library/courses/puppet-4-server-puppet-enterprise


#### Other:<br/>
https://app.pluralsight.com/library/courses/securing-docker-platform<br/>
https://app.pluralsight.com/library/courses/ssh-telnet-protocol-deep-dive<br/>
https://app.pluralsight.com/library/courses/docker-containers-big-picture<br/>
https://app.pluralsight.com/library/courses/getting-started-puppet<br/>


#### Useful resources:<br/>

https://gist.github.com/ivanskodje/5bd8697a64e9879f397f7ef161cf0956
https://gist.github.com/jesperorb/c14aef85735c54f479896cfa6f16a1e5
https://github.com/ytdl-org/youtube-dl/issues/24008
https://github.com/rojter-tech/pluradl.py/issues/19
