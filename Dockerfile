FROM ubuntu:bionic

MAINTAINER Jason A. Everling <jason.everling@gmail.com>


RUN apt update && \
    apt install --no-install-recommends --yes \
    gnupg2 wget lsb-release
    
RUN wget http://repo.percona.com/apt/percona-release_latest.bionic_all.deb \
    && dpkg -i percona-release_latest.bionic_all.deb \
    && apt update \
    && apt install --no-install-recommends --yes \
    percona-xtrabackup-24 \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["xtrabackup"]

CMD ["/bin/bash"]
