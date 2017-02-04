FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*
COPY ./portmap.c /var/portmap/
WORKDIR /var/portmap/
RUN gcc -o portmap portmap.c
RUN chmod 777 portmap
EXPOSE 1111 2222
CMD ["./portmap -m 2 -p1 1111 -h2 0.0.0.0 -p2 2222"]