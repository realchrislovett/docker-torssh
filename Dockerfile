FROM clovett/tor

USER root

RUN apk add torsocks openssh-client --update-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ ;\
    rm -rf /var/cache/apk/* ;\
    echo "Log notice file /var/log/tor/notices.log" > /etc/tor/torrc

COPY entrypoint.sh /

USER tor

ENTRYPOINT ["/entrypoint.sh"]
