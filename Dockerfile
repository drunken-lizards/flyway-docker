FROM openjdk:8-jre-alpine

ENV FLYWAY_VERSION=5.0.7

# Install psql to allow for cleaner database initialization scripts.
RUN apk update && apk add --no-cache \
    bash \
    curl \
    postgresql-client \
    tar && \
    mkdir -p /usr/local/flyway && \
    curl -SLO http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$FLYWAY_VERSION/flyway-commandline-$FLYWAY_VERSION.tar.gz && \
    tar -xzf "flyway-commandline-$FLYWAY_VERSION.tar.gz" -C /usr/local/flyway --strip-components=1 && \
    apk del curl tar && \
    rm "flyway-commandline-$FLYWAY_VERSION.tar.gz"

ENTRYPOINT ["/usr/local/flyway/flyway"]
