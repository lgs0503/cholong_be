## JSP 사용안하면 JAR로 배포해야해서 아래 설정으로 가능 내장톰캣
#FROM openjdk:17-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

## WAR 배포시사용 (JSP 사용할때 와장톰캣 사용해야해서 WAR로빌드)
FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]