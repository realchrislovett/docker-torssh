FROM alpine

RUN apk upgrade ;\
    apk add tor torsocks openssh-client ;\
    echo "Log notice file /var/log/tor/notices.log" > /etc/tor/torrc

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
