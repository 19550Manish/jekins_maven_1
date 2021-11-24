FROM openjdk:8
ADD target/jenkins_maven_1-0.0.1-SNAPSHOT.jar jenkins_maven_1-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/jenkins_maven_1-0.0.1-SNAPSHOT.jar"]

