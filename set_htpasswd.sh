#!/bin/bash

if [[ -n "$WEBDAV_USERNAME" ]] && [[ -n "$WEBDAV_PASSWORD" ]]
then
	htpasswd -c /etc/nginx/webdavpasswd $WEBDAV_USERNAME $WEBDAV_PASSWORD
else
	echo "No htpasswd config done"
	sed -i 's%auth_basic "Restricted";% %g' /etc/nginx/sites-enabled/webdav-site.conf
	sed -i 's%auth_basic_user_file webdavpasswd;% %g' /etc/nginx/sites-enabled/webdav-site.conf
fi