FROM registry.gitlab.com/modioab/base-image:fedora-24-python-latest
LABEL maintainer "spider@modio.se"

COPY caramel.ini /srv/webapp/caramel.ini
COPY run.sh /usr/bin/caramel

RUN ["pip3", "install", "git+https://github.com/ModioAB/caramel.git@SAN-extension"]

VOLUME ["/data"]
WORKDIR /data
EXPOSE 80
CMD ["/usr/bin/caramel"]
