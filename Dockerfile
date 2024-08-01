# Use the official OpenJDK 8 JDK image with Alpine Linux
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory on the host to the container
COPY ./target/*.jar /app/app.jar

# Run the JAR file using java -jar
CMD ["java", "-jar", "/app/app.jar"]
