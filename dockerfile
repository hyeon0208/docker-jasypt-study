FROM openjdk:17-jdk

ARG JAR_FILE=./build/libs/study-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} study.jar

CMD ["java", "-jar", "-Duser.timezone=Asia/Seoul", "study.jar"]


# FROM mysql:latest
#
# ENV MYSQL_ROOT_PASSWORD=1234
# ENV MYSQL_DATABASE=database
# ENV MYSQL_USER=kaki
# ENV MYSQL_PASSWORD=1234
#
# EXPOSE 3306
