FROM alpine:3.12.1

RUN \
    apk add --update --no-cache bash gnupg

ENTRYPOINT ["bash"]
