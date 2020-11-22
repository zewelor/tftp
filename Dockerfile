ARG ALPINE_VERSION=3.12
FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache tftp-hpa
VOLUME /var/tftpboot
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]
