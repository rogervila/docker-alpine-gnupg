FROM alpine:3.12.1

RUN \
    apk add --update --no-cache bash gnupg

ADD keep-alive.sh /bin/keep-alive

ENTRYPOINT ["bash"]

CMD ["keep-alive"]

