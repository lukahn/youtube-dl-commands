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

Python (https://app.pluralsight.com/paths/skill/python):\
Beginner\
https://app.pluralsight.com/library/courses/python-big-picture\
https://app.pluralsight.com/library/courses/getting-started-python-core\

Intermediate\
https://app.pluralsight.com/library/courses/python-beyond-basics\
https://app.pluralsight.com/library/courses/python-best-practices-code-quality\
https://app.pluralsight.com/library/courses/managing-python-packages-virtual-environments\
https://app.pluralsight.com/library/courses/using-unit-testing-python\

Advanced\
https://app.pluralsight.com/library/courses/full-stack-web-development-python-web2py\
https://app.pluralsight.com/library/courses/advanced-python\


Managing Containers with Docker (https://app.pluralsight.com/paths/skill/managing-containers-with-docker):\
Beginner\
https://app.pluralsight.com/library/courses/docker-kubernetes-big-picture\
https://app.pluralsight.com/library/courses/docker-getting-started\
https://app.pluralsight.com/library/courses/docker-swarm-mode-getting-started\
https://app.pluralsight.com/library/courses/securing-docker-platform\
https://app.pluralsight.com/library/courses/docker-windows-getting-started\

Intermediate\
https://app.pluralsight.com/library/courses/docker-networking\
https://app.pluralsight.com/library/courses/implementing-self-hosted-docker-registry\
https://app.pluralsight.com/library/courses/securing-docker-container-workloads\
https://app.pluralsight.com/library/courses/docker-images-managing\
https://app.pluralsight.com/library/courses/managing-load-balancing-scale-docker-swarm-clusters\
https://app.pluralsight.com/library/courses/docker-deep-dive-update\

Advanced\
https://app.pluralsight.com/library/courses/containerizing-software-application-docker\
https://app.pluralsight.com/library/courses/monitoring-containerized-app-health-docker\
https://app.pluralsight.com/library/courses/handling-data-stateful-applications-docker\


Certified Kubernetes Administrator (https://app.pluralsight.com/paths/certificate/certified-kubernetes-administrator)\
https://app.pluralsight.com/library/courses/kubernetes-installation-configuration-fundamentals\
https://app.pluralsight.com/library/courses/managing-kubernetes-api-server-pods\
https://app.pluralsight.com/library/courses/managing-kubernetes-controllers-deployments\
https://app.pluralsight.com/library/courses/configuring-managing-kubernetes-storage-scheduling\
Coming soon: Configuring and Managing Kubernetes Networking, Services and Ingress


Other:\
https://app.pluralsight.com/library/courses/securing-docker-platform\
https://app.pluralsight.com/library/courses/ssh-telnet-protocol-deep-dive\
https://app.pluralsight.com/library/courses/docker-containers-big-picture\
