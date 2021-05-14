FROM swampup301.jfrog.io/urs-docker/groovy:jre16

RUN mkdir -p /opt/webapp/
COPY multi-module-application.jar /opt/webapp/multi-module-application.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/webapp/multi-module-application.jar"]