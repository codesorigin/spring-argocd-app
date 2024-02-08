# Stage 1: Build the application
FROM amazoncorretto:17-alpine

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# Stage 2: Create the runtime image


# Copy the built artifact from the builder stage
EXPOSE 9999

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]