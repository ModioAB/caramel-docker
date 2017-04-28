# caramel-docker
A caramel-ca Docker build

If you don't provide a volume for /data, your root CA will be ephemeral and
will not exist when you shut down your container. 

This may be awkward.

You can the following environment variables:
C=SE
ST=State
L=Location
O=Organization
OU=OrgUnit

To adjust the root ca.

To run, it needs:
A port (80 by default)
A volume to store database and certs on

```
docker run -t \
	-p 80:80 \
	--volume=/srv/caramel:/data:rw modioab/caramel \
	--name caramel\
	modioab/caramel
``` 



