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



