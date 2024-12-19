FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY build/libs/g51-sprint-ai-lecture-0.0.1-SNAPSHOT.jar /app/g51-sprint-ai-lecture-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/g51-sprint-ai-lecture-0.0.1-SNAPSHOT.jar"]

# To build and create docker image:
# docker build -t g51-sprint-ai-lecture .

# To run docker container:
# docker run -p 8080:8080 --name g51-spring-ai-lectur --env OPEN_AI_API_KEY="add your api key"  g51-sprint-ai-lecture:latest

# TO run mysql db in docker
# docker run --name g51-mysql-c1 -p 3307:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:latest