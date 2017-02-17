#!/bin/bash
set -xe

# Always create as it doesn't cause an error
mkdir -p /data/db

if [ ! -e /data/tls ];
then
	mkdir -p /data/tls/certs /data/tls/private
	chmod go-rwx /data/tls/private 
	printf "$C\n$ST\n$L\n$O\n$OU\n" | caramel_ca /srv/webapp/caramel.ini
fi

/usr/bin/caramel_initialize_db /srv/webapp/caramel.ini

exec /usr/bin/pserve /srv/webapp/caramel.ini
