FROM openjdk:11
EXPOSE 8081
ADD target/demo.jar demo.jar
RUN apt install maven
RUN mvn clean install
ENTRYPOINT ["java", "-jar", "demo.jar"]