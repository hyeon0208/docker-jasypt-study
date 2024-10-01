FROM openjdk:17-jdk

ARG BUILD_DATE
ARG GIT_COMMIT

LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.revision=$GIT_COMMIT

ARG JAR_FILE=./build/libs/study-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} study.jar

CMD ["java", "-jar", "-Duser.timezone=Asia/Seoul", "study.jar"]


# ENV MYSQL_TAG
#
# FROM mysql:$MYSQL_TAG
#
# ENV MYSQL_ROOT_PASSWORD=1234
# ENV MYSQL_DATABASE=database
# ENV MYSQL_USER=kaki
# ENV MYSQL_PASSWORD=1234
#
# EXPOSE 3306
