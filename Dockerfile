FROM openjdk:8
EXPOSE 9999
ADD target/spring-belajar-cicd.jar spring-belajar-cicd.jar
ENTRYPOINT ["java","-jar","/spring-belajar-cicd.jar"]