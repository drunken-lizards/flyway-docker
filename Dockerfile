FROM java:8-jre

# Install psql to allow for cleaner database initialization scripts.
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

ENV FLYWAY_VERSION=4.0

RUN mkdir -p /usr/local/flyway && \
    curl -SLO http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$FLYWAY_VERSION/flyway-commandline-$FLYWAY_VERSION.tar.gz && \
    tar -xzf "flyway-commandline-$FLYWAY_VERSION.tar.gz" -C /usr/local/flyway --strip-components=1

ENTRYPOINT ["/usr/local/flyway/flyway"]
