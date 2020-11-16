# Stage 1 - Build a JAR File maven is like NPM
# The mvn command will create the .jar file
FROM maven:3.6.3-jdk-8-slim AS stage1
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

# Stage 2 - Create an Image
# We are copying the image from stage1 to target folder into stage 2
# Note we are using "ENTRYPOINT" as opposed to "CMD"
FROM openjdk:8-jdk-alpine
EXPOSE 5000
COPY --from=stage1 /home/app/target/hello-world-java.jar hello-world-java.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java.jar"]
