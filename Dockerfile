FROM java:8
VOLUME /tmp
#ADD $JAR_FILE app.jar
ADD target/jenkins-demo-2.0.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
