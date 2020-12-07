FROM alpine:3.12.1

RUN \
    apk add --update --no-cache bash gnupg openssh sshpass && \
    ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
    ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo -e "s3cr3t\ns3cr3t" | passwd

ENTRYPOINT ["/usr/sbin/sshd"]

CMD ["-D"]

EXPOSE 22

