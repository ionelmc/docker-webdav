# NGINX WebDAV container

Usage:

```bash
docker run --restart always --detach --name webdav --publish 7000:8080 --env UID=$UID --volume $PWD:/media webdav
```

Optionally you can add two environment variables for basic authentication:

    WEBDAV_USERNAME
    WEBDAV_PASSWORD

