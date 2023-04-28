FROM docker.io/library/eclipse-mosquitto:2.0.14

COPY docker-entrypoint.sh /bell/docker-entrypoint.sh
RUN chmod +x /bell/docker-entrypoint.sh

ENTRYPOINT [ "/bell/docker-entrypoint.sh" ]