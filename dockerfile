FROM ubuntu:latest

RUN apt-get update && apt-get install -y openjdk-11-jdk git maven

# Copy the Jenkins war file into the container
COPY jenkins.war /jenkins.war

# Set the entrypoint to run Jenkins with Java
ENTRYPOINT ["java", "-jar", "/jenkins.war"]

# Optional: Provide default CMD arguments to Jenkins (if needed)
# CMD ["--option1", "--option2"]

