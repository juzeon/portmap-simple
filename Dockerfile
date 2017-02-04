FROM gcc:4.9
COPY ./portmap.c /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN gcc -o portmap portmap.c
RUN chmod 777 portmap
EXPOSE 1111 2222
CMD ["./portmap -m 2 -p1 1111 -h2 0.0.0.0 -p2 2222"]