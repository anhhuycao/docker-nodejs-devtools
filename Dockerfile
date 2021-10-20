FROM node:latest
MAINTAINER huy.ca <huy.ca@geekup.vn>

RUN npm install -g bower grunt-cli gulp

# Setup to run with UID of non-root user
RUN apt-get update && apt-get -y --no-install-recommends install \
    ca-certificates \
    curl

RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.14/gosu-amd64" \
    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.14/gosu-amd64.asc" \
    && gpg --verify /usr/local/bin/gosu.asc \
    && rm /usr/local/bin/gosu.asc \
    && chmod +x /usr/local/bin/gosu

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

WORKDIR /data
# Set default command
CMD ["/bin/bash"]