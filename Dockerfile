FROM openjdk:11
EXPOSE 8081
ADD target/demo.jar demo.jar
RUN wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar -xvf apache-maven-3.6.3-bin.tar.gz
RUN mv apache-maven-3.6.3 /opt/
RUN M2_HOME='/opt/apache-maven-3.6.3' & PATH="$M2_HOME/bin:$PATH" & export PATH
ENTRYPOINT ["java", "-jar", "demo.jar"]