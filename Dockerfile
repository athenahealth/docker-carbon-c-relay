FROM oraclelinux:7.1

# Install EPEL
RUN yum --assumeyes install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum --assumeyes clean all \
    && rm -rf /var/cache/yum/*

RUN yum --assumeyes install \
        carbon-c-relay \
    && yum --assumeyes clean all \
    && rm -rf /var/cache/yum/*

CMD ["/usr/bin/carbon-c-relay"]