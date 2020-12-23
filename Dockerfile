FROM openjdk:8
EXPOSE 8888
ARG JAR_FILE=target/spring-belajar-cicd.jar
COPY ${JAR_FILE} spring-belajar-cicd.jar
ENTRYPOINT ["java","-jar","/spring-belajar-cicd.jar"]