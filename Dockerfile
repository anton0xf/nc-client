FROM docker-proxy.artifactory.tcsbank.ru/alpine:3.15
RUN echo "http://repo-linux.tcsbank.ru/repository/alpine/v3.15/main/" > /etc/apk/repositories \
    && echo "http://repo-linux.tcsbank.ru/repository/alpine/v3.15/community/" >> /etc/apk/repositories \
    && apk add --no-cache netcat-openbsd
ADD bin/run-client.sh /
CMD ["sh", "/run-client.sh"]

