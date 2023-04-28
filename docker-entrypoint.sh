#! /bin/sh

set -e

cat > /mosquitto/config/mosquitto.conf << EOL
listener ${MQTT_PORT:-18830}
allow_anonymous true
EOL

# https://github.com/eclipse/mosquitto/blob/4e6fbae45ce424d2204c8b5d51b37dc5a08013bc/docker/generic/Dockerfile#L120-L121

# call the base Docker image entrypoint
/docker-entrypoint.sh

# Now run the Mosquitto server
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf