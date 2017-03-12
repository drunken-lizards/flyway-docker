# Flyway Docker

What is Flyway Docker?

A simple dockerized implementation of flyway the also includes postgres.

## Usage

```sh
flyway [options] command
```

By default, the configuration will be read from conf/flyway.conf.
Options passed from the command-line override the configuration.

| Commands |                                                                      |
|----------|----------------------------------------------------------------------|
| migrate  | Migrates the database                                                |
| clean    | Drops all objects in the configured schemas                          |
| info     | Prints the information about applied, current and pending migrations |
| validate | Validates the applied migrations against the ones on the classpath   |
| init     | Creates and initializes the metadata table                           |
| repair   | Repairs the metadata table                                           |

