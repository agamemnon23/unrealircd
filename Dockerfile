FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/London

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get -qq update && \
    apt-get -yqq --no-install-recommends install \
        locales \
        build-essential \
        openssl \
        libssl-dev \
        curl \
    > /dev/null && \
    sed -i -e 's/# en_GB.UTF-8 UTF-8/en_GB.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_GB.UTF-8

ENV LANG en_GB.UTF-8 
ENV LANGUAGE en_GB:en  
ENV LC_ALL en_GB.UTF-8    

RUN groupadd -r unrealircd && \
    useradd -rm -s /bin/false -g unrealircd unrealircd && \
    mkdir /install && \
    mkdir /unrealircd && \
    curl -ksL https://www.unrealircd.org/downloads/unrealircd-latest.tar.gz -o unrealircd-latest.tar.gz && \
    tar zxf unrealircd-latest.tar.gz -C /install --strip-components 1 && \
    chown -R unrealircd:unrealircd /install && \
    chown -R unrealircd:unrealircd /unrealircd

COPY --chown=unrealircd:unrealircd config.settings /install

WORKDIR /install
USER unrealircd

RUN ./Config && \
    make && \
    make install

WORKDIR /
USER root

RUN apt-get -yqq remove --purge \
        build-essential \
        libssl-dev \
        curl && \
    apt-get -yqq autoremove --purge && \
    rm -rf /install && \
    rm -f /unrealircd/source && \
    rm -f /unrealircd-latest.tar.gz

WORKDIR /unrealircd
USER unrealircd

CMD ["/unrealircd/bin/unrealircd", "-F" ]
