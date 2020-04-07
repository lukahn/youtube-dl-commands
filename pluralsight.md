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
youtube-dl -v --cookies cookies.txt --user-agent "$useragent" -r 20K -o "%(playlist)s/%(chapter_number)s - %(chapter)s/%(playlist_index)s - %(title)s.%(ext)s" --sleep-interval 60 --max-sleep-interval 120 --all-subs --embed-subs --add-metadata --embed-thumbnail "$course" --playlist-start 1
```

### Recommended courses:

Python (https://app.pluralsight.com/paths/skill/python):<br/>
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


Managing Containers with Docker (https://app.pluralsight.com/paths/skill/managing-containers-with-docker):<br/>
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


Certified Kubernetes Administrator (https://app.pluralsight.com/paths/certificate/certified-kubernetes-administrator)<br/>
https://app.pluralsight.com/library/courses/kubernetes-installation-configuration-fundamentals<br/>
https://app.pluralsight.com/library/courses/managing-kubernetes-api-server-pods<br/>
https://app.pluralsight.com/library/courses/managing-kubernetes-controllers-deployments<br/>
https://app.pluralsight.com/library/courses/configuring-managing-kubernetes-storage-scheduling<br/>
Coming soon: Configuring and Managing Kubernetes Networking, Services and Ingress<br/>


Other:<br/>
https://app.pluralsight.com/library/courses/securing-docker-platform<br/>
https://app.pluralsight.com/library/courses/ssh-telnet-protocol-deep-dive<br/>
https://app.pluralsight.com/library/courses/docker-containers-big-picture<br/>
