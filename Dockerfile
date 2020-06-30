FROM debian

ARG DEBIAN_FRONTEND=noninteractive

ENV LANG en_GB.UTF-8  
ENV LANGUAGE en_GB:en  
ENV LC_ALL en_GB.UTF-8     
ENV TZ=Europe/London

RUN apt-get update && \
    apt-get install -y locales openssl && \
    sed -i -e "s/# $LANG UTF-8/$LANG UTF-8/" /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=$LANG && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    groupadd -r unrealircd && \
    useradd -rm -s /bin/false -g unrealircd unrealircd

ADD --chown=unrealircd:unrealircd unrealircd /unrealircd

USER unrealircd
WORKDIR /unrealircd

RUN mkdir -p cache data modules/third

CMD ["/unrealircd/bin/unrealircd", "-F" ]
