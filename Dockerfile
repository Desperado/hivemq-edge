FROM hivemq/hivemq-edge:latest

# Railway assigns a dynamic PORT — override the admin API listener to use it
# HiveMQ Edge config binds admin API to 8080 by default, which works with Railway's PORT mapping
EXPOSE 8080 1883

ENV HIVEMQ_ALLOW_ALL_CLIENTS=true
ENV HIVEMQ_BIND_ADDRESS=0.0.0.0
