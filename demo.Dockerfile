# Docker file for demo purposes

# Alpine - so download is fast
FROM openjdk:8-jre-alpine

EXPOSE 8080

# Use local file as database - who cares
ENV DB_DIALECT HSQLDB
ENV DB_URL jdbc:hsqldb:file:lavagna
ENV DB_USER sa
ENV DB_PASS ""
ENV SPRING_PROFILE dev

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

# download the latest distribution from lavagna project build servers
RUN wget "https://github.com/digitalfondue/lavagna/releases/download/lavagna-1.1.2/lavagna-1.1.2-distribution.zip" -O lavagna.zip && \
    unzip lavagna.zip && \
    rm lavagna.zip && \
    mv lavagna*/ lavagna/

# Execute the web archive
CMD java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
-Ddatasource.url="${DB_URL}" \
-Ddatasource.username="${DB_USER}" \
-Ddatasource.password="${DB_PASS}" \
-Dspring.profiles.active="${SPRING_PROFILE}" \
-jar ./lavagna/lavagna/lavagna-jetty-console.war --headless