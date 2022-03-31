FROM maven:3-openjdk-8-slim
EXPOSE 8080
COPY . /horizon-holding-info-servlet
WORKDIR /horizon-holding-info-servlet

RUN mvn package
ENTRYPOINT mvn jetty:run
