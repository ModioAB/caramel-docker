FROM registry.gitlab.com/modioab/base-image:fedora-24-python-latest

COPY caramel.ini /srv/webapp/caramel.ini
COPY run.sh /usr/bin/caramel

RUN ["pip3", "install", "caramel"]

VOLUME ["/data"]
WORKDIR /data
EXPOSE 80
CMD ["/usr/bin/caramel"]
