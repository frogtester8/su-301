FROM swampup301.jfrog.io/urs-docker/python:3.9.5-slim-buster

RUN mkdir -p /var/opt/webapp
COPY webapp_python.tar.gz /var/opt/webapp/
RUN tar -xzvf /var/opt/webapp/webapp_python.tar.gz -C /var/opt/webapp/

EXPOSE 8080

ENTRYPOINT ["python3", "/var/opt/webapp/main.py"]