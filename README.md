# Usage
This is an NGINX WebDAV docker with some basic WebDAV functionality. Its main purpose is in end-to-end test environments to upload files.

Via two environment variables basic authentication can be set:

	WEBDAV_USERNAME
	WEBDAV_PASSWORD

If either environment variable is missing, basic authentication is removed.

Basic usage:

	docker run -d --name webdav -p 80:80 -v "$PWD":/var/www visity/webdav
	
