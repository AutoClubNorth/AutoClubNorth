# Use an official Java runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the build artifact into the container
COPY build/libs/*.jar ClubMasterApplication.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD java -jar ClubMasterApplication.jar
