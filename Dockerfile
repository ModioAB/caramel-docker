FROM registry.gitlab.com/modioab/base-image:fedora-24-python-latest
LABEL maintainer "spider@modio.se"

ENV LANG  C.utf8
ENV LANGUAGE en_US:en
ENV LC_ALL C.utf8

COPY caramel.ini /srv/webapp/caramel.ini
COPY run.sh /usr/bin/caramel

RUN ["pip3", "install", "caramel"]

VOLUME ["/data"]
WORKDIR /data
EXPOSE 80
CMD ["/usr/bin/caramel"]
