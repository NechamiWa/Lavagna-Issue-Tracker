# Lavagna Issue Tracker

[![License](https://img.shields.io/github/license/digitalfondue/lavagna.svg)](https://github.com/digitalfondue/lavagna/blob/master/LICENSE)
[![Release](https://img.shields.io/github/release/digitalfondue/lavagna.svg)](https://github.com/digitalfondue/lavagna/releases)

Lavagna is a lightweight and user-friendly issue/project tracking software written in Java and Kotlin. This repository includes a Docker-compose setup for easy deployment.

## Features

- **Java 8 & Kotlin**: Leveraging modern programming languages.
- **Multiple Database Support**: MySQL, MariaDB, PostgreSQL, or HSQLDB.
- **Flexible Deployment**: Deployable as a simple WAR or self-contained WAR with embedded Jetty web server.
- **Docker Image**: Quickly deploy using Docker.

## Installation

### Docker

```bash
docker pull digitalfondue/lavagna
```

### Local Testing

```bash
wget https://repo1.maven.org/maven2/io/lavagna/lavagna/1.1.2/lavagna-1.1.2-distribution.zip
unzip lavagna-1.1.2-distribution.zip
./lavagna-1.1.2/bin/lavagna.sh
```

Go to [http://localhost:8080](http://localhost:8080) and login with username "user" and password "user".

## Development

- **Java 8 & Kotlin**: For smooth development experience.
- **IDE Integration**: IntelliJ or Eclipse with Kotlin plugin.
- **Testing**: Run tests with `mvn test`.
- **Documentation**: Built with stampo, run `mvn clean stampo:build` and visit [http://localhost:45001/](http://localhost:45001/).

## Vagrant

For testing with different databases:

```bash
vagrant up [pgsql/mysql]
mvn test -Ddatasource.dialect=PGSQL/MYSQL
```