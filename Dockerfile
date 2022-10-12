FROM maven:3.8.6-openjdk-18
COPY . /home/ubuntu/image_zeen_java
WORKDIR /home/ubuntu/image_zeen_java
RUN mvn clean install -DskipTests

WORKDIR /home/ubuntu/image_zeen_java/target
# CMD ["java", "-jar", "spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]
CMD ["java", "-jar", "assignment1-0.0.1-SNAPSHOT.jar"]
